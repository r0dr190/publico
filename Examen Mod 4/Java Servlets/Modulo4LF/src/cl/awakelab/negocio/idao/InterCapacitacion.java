package cl.awakelab.negocio.idao;

import java.util.List;

import cl.awakelab.negocio.model.Cliente;
import cl.awakelab.negocio.model.Contacto;
import cl.awakelab.negocio.model.Profesional;
import cl.awakelab.negocio.model.Usuario;
import cl.awakelab.negocio.model.Administrativo;
import cl.awakelab.negocio.model.Capacitacion;

public interface InterCapacitacion {//interfaz de vinculo con el DAO
	
	
	public void setearCapacitacion();//metodo para ingresar datos a capacitacion
	public void crearCapac(Capacitacion capac);// metodo para imprimir los datos en la consola

	public boolean registrar(Capacitacion capacitacion);
	public List<Capacitacion> obtener();
	public boolean actualizar(Capacitacion capacitacion);
	public boolean eliminar(Capacitacion capacitacion);	
	public Capacitacion obtenerCapacitacionporId (Capacitacion capacitacion);
	
	public boolean registrarUser(Usuario usuario);
	public List<Usuario> obtenerUser();
	public Usuario obtenerUsuarioporId (Usuario usuario);
	
	public boolean registrar(Cliente cliente);
	public List<Cliente> obtenerCliente();
	
	public boolean registrarProfesional(Profesional profesional);
	public List<Profesional> obtenerProfesional();
	
	public boolean registrarAdministrativo(Administrativo administrativo);
	public List<Administrativo> obtenerAdministrativo();
	
	public void crearContacto(Contacto contacto);
	
	public boolean actualizarCliente(Cliente cliente);
	public Cliente obtenerClientexId(Cliente cliente);
	
	public boolean actualizarAdministrativo(Administrativo administrativo);
	public Administrativo obtenerAdministrativoxId(Administrativo administrativo);
	
	public boolean actualizarProfesional(Profesional profesional);
	public Profesional obtenerProfesionalxId(Profesional profesional);
}
