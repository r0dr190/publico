--Creacion de tablas--


DROP TABLE usuario CASCADE CONSTRAINTS;
drop table administrativo cascade constraints;
drop table profesional cascade constraints;
drop table asesorias cascade constraints;
drop table cliente cascade constraints;
drop table registropagos cascade constraints;
drop table accidente cascade constraints;
drop table capacitacion cascade constraints;
drop table asistentes cascade constraints;
drop table visita cascade constraints;
drop table registrochequeos cascade constraints;
drop table chequeos cascade constraints;
drop table actividades cascade constraints;
drop SEQUENCE add_actividades;
drop SEQUENCE add_registro;
drop SEQUENCE add_capacitacion;

--TABLA USUARIO--
create table usuario(nombre varchar2(30) not null,
apellido varchar2(30) not null,
fechanac varchar2(10),
runusuario number(9) not null,
idusuario number not null,
constraint usuario_pk primary key(idusuario)
);

--TABLA ADMINISTRATIVO--
create table administrativo (runadmin number (9) not null,
nombre_adm varchar2(30),
apellido_adm varchar2(30),
mail varchar2(40) not null,
adm_idusuario number not null,
area_adm varchar2 (20),
CONSTRAINT administrativo_fk FOREIGN key(adm_idusuario) REFERENCES usuario,
constraint administrativo_pk primary key (runadmin)
);

--TABLA PROFESIONAL--
create table profesional (run_prof number (9) not null,
nombre_prof varchar2(30),
apellido_prof varchar2(30),
telefono number(9) not null,
titulo_prof varchar2(40) not null,
proyec_prof varchar2(100),
prof_idusuario number not null,
CONSTRAINT profesional_fk FOREIGN key(prof_idusuario) REFERENCES usuario,
constraint profesional_pk primary key (run_prof)
);

--TABLA ASESORIAS--
create table asesorias (cod_asesoria number(4) not null,
fecha_asesoria date not null,
motivo varchar2(100),
asesorias_runprofesional number (9),
constraint Asesorias_profesional_FK foreign key(asesorias_runprofesional) references profesional,
constraint asesorias_PK primary key (cod_asesoria)
);

--TABLA ACTIVIDADES--
create table actividades (cod_actividades number not null,
titulo_actividad varchar2 (50) not null,
descripcion_actividad varchar2 (100),
plazo_actividad number(2) not null,
actividad_codasesoria number (4) not null,
constraint actividades_FK foreign key (actividad_codasesoria) references asesorias,
constraint actividades_PK primary key (cod_actividades)
);
--secuencia actividades
CREATE SEQUENCE add_actividades
MINVALUE 1
START WITH 1
INCREMENT by 1
cache 50;
--trigger actividades
CREATE OR REPLACE TRIGGER add_triggactiv
BEFORE INSERT ON actividades
FOR EACH ROW
WHEN (new.cod_actividades is null)
BEGIN
    
    SELECT add_actividades.nextval INTO:new.cod_actividades FROM dual;
end;
/

--TABLA CLIENTE--
create table cliente (rutcliente number(9) not null,
clinombres varchar2(30)not null,
cliapellidos varchar2 (30)not null,
clitelefono varchar2(20) not null,
cliafp varchar2 (30),
clisistemasalud number(2),
clidireccion varchar2(70),
clicomuna varchar2(50),
cliedad number(3) not null,
cliente_idusuario number,
constraint cons_Telef unique (clitelefono),
CONSTRAINT cons_SSalud check (clisistemasalud>0 and clisistemasalud<3),
constraint cliente_FK1 foreign key (cliente_idusuario) references usuario,
constraint Cliente_pk primary key (rutcliente)
);

--TABLA REGISTROPAGOS--
create table registropagos (identificador number not null,
fecha_pago date,
monto_pago number not null,
mes varchar2(10) not null,
año number (4) not null,
id_pagos number not null,
constraint año check (año>0 and año<2050), 
CONSTRAINT registropagos_fk FOREIGN key(id_pagos) REFERENCES cliente,
constraint registropagos_pk primary key (identificador)
);

--secuencia registropagos
CREATE SEQUENCE add_registro
MINVALUE 1
START WITH 1
INCREMENT by 1
cache 50;
--trigger registropagos
CREATE OR REPLACE TRIGGER add_triggregistro
BEFORE INSERT ON registropagos
FOR EACH ROW
WHEN (new.identificador is null)
BEGIN
    
    SELECT add_registro.nextval INTO:new.identificador FROM dual;
end;
/



--TABLA ACCIDENTE--
create TABLE Accidente (idaccidente number(9) not null,
accifecha date,
accihora TIMESTAMP,
accilugar varchar2(50) not null,
acciorigen varchar2(100),
acciconsecuencias varchar2(100),
cliente_rutcliente number(9) not null,
CONSTRAINT Accidente_Cliente_fk FOREIGN key(cliente_rutcliente) REFERENCES cliente,
constraint Accidente_pk primary key (idaccidente));

-- TABLA CAPACITACION--
create table Capacitacion (idcapacitacion number(9) not null,
capfecha varchar2(10),
caphora varchar2(7),
caplugar varchar2(100) not null,
capduracion number(4),
Cliente_rutcliente number(9) not null,
CONSTRAINT Capacitacion_Cliente_FK FOREIGN KEY(Cliente_rutcliente) REFERENCES cliente,
CONSTRAINT Capacitacion_PK PRIMARY KEY (idcapacitacion));

--secuencia capacitacion
CREATE SEQUENCE add_capacitacion
MINVALUE 1
START WITH 1
INCREMENT by 1
cache 20;
--creamos el gatillo para la secuencia--
CREATE OR REPLACE TRIGGER add_triCapp
BEFORE INSERT ON capacitacion
FOR EACH ROW
WHEN (new.idcapacitacion is null)
BEGIN
    
    SELECT add_capacitacion.nextval INTO:new.idcapacitacion FROM dual;
end;
/


--TABLA ASISTENTES--
create table Asistentes(idasistente number(9) not null,
asistnombrecompleto varchar2(100) not null,
asistedad number(3) not null,
Capacitacion_idcapacitacion number(9) not null,
asistcorreo varchar2(70),
asisttelefono varchar2(20),
CONSTRAINT Asistentes_Capacitacion_FK foreign key(Capacitacion_idcapacitacion) REFERENCES Capacitacion,
CONSTRAINT Asistentes_PK primary key (idasistente));

--TABLA REGISTROCHEQUEOS--
create table registrochequeos (estado varchar2(20) not null,
constraint registrochequeos_pk primary key (estado)
);

--TABLA VISITA--
create table Visita (idvisita number(9) not null,
visfecha date not null,
vishora TIMESTAMP,
vislugar varchar2(50) not null,
Cliente_rutcliente number(9) not null,
visita_estado varchar2(20),
constraint Visita_cliente_FK foreign key (Cliente_rutcliente) REFERENCES cliente,
constraint visita_estado_FK1 foreign key (visita_estado) references registrochequeos,
constraint Visita_PK primary key(idvisita));

--TABLA CHEQUEOS--
create table chequeos (idchequeo number not null,
nomchequeo varchar2(20),
cheq_estado varchar2(20) ,
CONSTRAINT chequeos_fk FOREIGN key(cheq_estado) REFERENCES registrochequeos,
constraint Chequeos_pk primary key (idchequeo)
);

-------INGRESO DE DATOS-------

--USUARIO
insert into usuario values('Juan Carlos', 'Valderrama Perez','28/08/1980',09125657, 001);
insert into usuario values('Claudia Andrea', 'Gonzalez Jimenez','15-09-1997',18689214, 002);
insert into usuario values('Mario Joaquin', 'Bolaños, Ariztia','28-02-1995',15339784, 003);
--ADMINISTRATIVO
insert into administrativo values(123456789,'admuno','lopez','admuno@gmail.com',1,'RRHH');
insert into administrativo values(987654321,'admdos','torres','admdos@gmail.com',1,'contabilidad');
insert into administrativo values(654321987,'admtres','aguilar','admtres@gmail.com',1,'secretario');
--PROFESIONAL
insert into profesional values(9125315,'Juan Alberto', 'Gomez Lira', 944625983, 'Abogado', 'reformulacion cargos por atropellos bajo influencia', 002);
insert into profesional values(15664937,'Cristian Cristino', 'Alvarez Ruiz', 955769224, 'Ing en Prevencion', 'implementacion de señaletica complementaria', 001);
insert into profesional values(13784445,'Andrea Gladys', 'Perez, Aldana', 999825634, 'Arquitecto', 'nueva sede de entrenamiento antiincendios', 003);
--ASESORIAS
insert into Asesorias values(0030,to_date('04-10-2019', 'dd-mm-yyyy'), 'Se solicita asesoria en prevencion de riesgos',9125315); 
insert into Asesorias values(0031,to_date('08-03-2019', 'dd-mm-yyyy'), 'Se solicita asesoria en resolucion de conflictos medioambientales',15664937); 
insert into Asesorias values(0032,to_date('03-05-2020', 'dd-mm-yyyy'), 'Se solicita asesoria en disminucion de emision de particulas',13784445);
--ACTIVIDADES
insert into actividades values( null,'Evaluacion Daño Vehiculo', 'registrar los daños del vehiculos con fotos', 15, 0030);  
insert into actividades values( null, 'Examinacion Respiratoria Escuela La Greda', 'radiografias toraxicas y test de esfuerzo', 60, 0031);  
insert into actividades values( null, 'Visita Ingeniero Medioambiental', 'Catastro de filtros para emision de gases', 90, 0032);  

--CLIENTE
insert into cliente values(2333888,'Jose','Marchant',214536987,'modelo', 1,'Los Almendros 2309','La Pintana', 35, 001);
insert into cliente values(4658731,'Pablo','Perez',521478693,'provida', 1,'Los carezos 872','Quintero', 28, 003);
insert into cliente values(5327461,'Juana','Molina',845967125,'Habitat', 2,'Rancagua 297','Quilpue', 45, 002);
--REGISTRO PAGOS
insert into registropagos (fecha_pago, monto_pago,mes,año,id_pagos) values (to_date('22-03-2020', 'dd-mm-yyyy'), 1500000, 'Marzo', 2020, 4658731);
insert into registropagos (fecha_pago, monto_pago,mes,año,id_pagos) values (to_date('28-05-2020','dd-mm-yyyy'), 3500000, 'Mayo', 2020, 5327461);
insert into registropagos (fecha_pago, monto_pago,mes,año,id_pagos) values (to_date('26-08-2020','dd-mm-yyyy'), 500000, 'Agosto', 2020, 2333888);

--ACCIDENTE
insert into accidente  VALUES (101, to_date('22-04-1998' ,'dd-mm-yyyy'),'22-04-1998 21:36:00','Villa Alemana','Vehicular', 'muerte',2333888);
insert into accidente VALUES (103, to_date('15-07-2001' ,'dd-mm-yyyy'),'15-07-2001 20:25:00','Quilpue','Derrumbe', 'Lesiones menores',5327461);
insert into accidente  VALUES (102, to_date('03-09-2006' ,'dd-mm-yyyy'),'03-09-2006 18:35:00','Concon','Incendio', 'quemadura tercer grado',4658731);
--CAPACITACION
INSERT INTO capacitacion VALUES(null,'04-07-15', '16:45', 'Concon', 60, 2333888);
INSERT INTO capacitacion VALUES(null,'15-06-18', '17:00', 'Valparaiso', 180, 4658731);
INSERT INTO capacitacion VALUES(null,'23-08-17', '18:45', 'Valparaiso', 90, 5327461);
--ASISTENTES
INSERT INTO asistentes values(23,'Jose Alberto Cruz',30, 1, 'josealberto@gmail.com', '9-22546387');
INSERT INTO asistentes values(24,'Maria Francisca Jorquera',37, 2, 'mariafrancisca@gmail.com', '9-99834657');
INSERT INTO asistentes values(25,'Ignacio Andres Eyzaguirre',45, 1, 'eyzanacho@gmail.com', '9-72113624');
--REGISTROCHEQUEOS
insert into registrochequeos values('pendiente');
insert into registrochequeos values('aprobado');
insert into registrochequeos values('revision');
--VISITA
insert into visita values(1001, to_date ('04-07-2015' ,'dd-mm-yyyy'),'04-07-2015 12:00:00', 'Concon', 4658731,'pendiente');
insert into visita values(1002, to_date ('08-09-2019' ,'dd-mm-yyyy'),'08-09-2019 10:30:00', 'Villa Alemana', 5327461,'aprobado');
insert into visita values(1003, to_date ('15-02-2016' ,'dd-mm-yyyy'),'15-02-2016 09:45:00', 'Valparaiso', 2333888,'revision');
--CHEQUEOS
insert into chequeos values (11,'chequeouno','pendiente');
insert into chequeos values (12,'chequeodos','aprobado');
insert into chequeos values (13,'chequeotres','revision');


--CONSULTAS--

--Consulta A--
SELECT ASISTNOMBRECOMPLETO,ASISTEDAD, ASISTCORREO 
FROM ASISTENTES 
LEFT JOIN CAPACITACION 
ON ASISTENTES.CAPACITACION_IDCAPACITACION = CAPACITACION.IDCAPACITACION
WHERE ASISTENTES.CAPACITACION_IDCAPACITACION=1;

--Consulta B--(le agregamos la columna del lugar para facilidad en la comprobacion que es Valparaiso)
SELECT IDCHEQUEO, NOMCHEQUEO, CHEQ_ESTADO, visita.vislugar
FROM CHEQUEOS
LEFT JOIN VISITA
ON CHEQUEOS.CHEQ_ESTADO = VISITA.VISITA_ESTADO
WHERE VISITA.VISLUGAR='Valparaiso';


--Consulta C--
SELECT ACCIDENTE.ACCILUGAR, ACCIDENTE.ACCIORIGEN, ACCIDENTE.ACCICONSECUENCIAS,
CLIENTE.CLINOMBRES, CLIENTE.CLIAPELLIDOS, CLIENTE.RUTCLIENTE, CLIENTE.CLITELEFONO
FROM ACCIDENTE
LEFT JOIN CLIENTE
ON CLIENTE.RUTCLIENTE=accidente.cliente_rutcliente;

commit;