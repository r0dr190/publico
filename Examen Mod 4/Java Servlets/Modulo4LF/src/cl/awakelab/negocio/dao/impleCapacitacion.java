package cl.awakelab.negocio.dao;


import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import java.util.List;

import cl.awakelab.negocio.dao.impleCapacitacion;
import cl.awakelab.negocio.idao.InterCapacitacion;
import cl.awakelab.negocio.model.Administrativo;
import cl.awakelab.negocio.model.Capacitacion;
import cl.awakelab.negocio.model.Cliente;
import cl.awakelab.negocio.model.Contacto;
import cl.awakelab.negocio.model.Profesional;
import cl.awakelab.negocio.model.Usuario;
import cl.awakelab.negocio.conexion.EjemploConexion;


public class impleCapacitacion implements InterCapacitacion{//implementamos una clase derivada de la interfaz
	

	
	@Override
	public boolean registrar(Capacitacion capacitacion) {//--------ingresar una capacitacion nueva
		
		boolean registrar = false;
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO capacitacion values ('" 
				+ capacitacion.getIdentificador() + "','" 
				+ capacitacion.getCapfecha() + "','" 
				+ capacitacion.getCaphora() + "','" 
				+ capacitacion.getCaplugar() + "','" 
		        + capacitacion.getCapduracion() + "','"
		        + capacitacion.getId() + "')";
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			registrar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método registrar");
			e.printStackTrace();
		}
		
		return registrar;
	}

	@Override
	public List<Capacitacion> obtener() {//-----------Obtener listado de capacitacion
		
		
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM "
				+ "capacitacion ORDER BY IDCAPACITACION";
		List<Capacitacion> listaCapacitacion 
			= new ArrayList<Capacitacion>();
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				Capacitacion c = new Capacitacion();
				c.setIdentificador(rs.getInt(1));
				c.setCapfecha(rs.getString(2));
				c.setCaphora(rs.getString(3));
				c.setCaplugar(rs.getString(4));
				c.setCapduracion(rs.getInt(5));
				c.setId(rs.getInt(6));
				listaCapacitacion.add(c);
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método obtener");
			e.printStackTrace();
		}		
		
		return listaCapacitacion;
	}
	
	@Override
	public List<Usuario> obtenerUser() {//--------------Obtener listado de usuarios
		
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM "
				+ "USUARIO ORDER BY IDUSUARIO";
		List<Usuario> listaUser = new ArrayList<Usuario>();
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				Usuario u = new Usuario();
				u.setId(rs.getInt(5));
				u.setRun(rs.getInt(4));
				u.setNombre(rs.getString(1));
				u.setFecha(rs.getString(3));
				listaUser.add(u);
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método obtenerUser");
			e.printStackTrace();
		}		
		
		return listaUser;
	}

	@Override
	public boolean actualizar(Capacitacion capacitacion) {//--------editar la capacitacion
		
		Connection con = null;
		Statement stm = null;

		boolean actualizar = false;

		String sql = "UPDATE capacitacion SET "
				+ "Id = '" + capacitacion.getIdentificador() + "', "
				+ "fecha = '" + capacitacion.getCapfecha() + "', "
				+ "hora = '" + capacitacion.getCaphora() + "' "
				+ "lugar = '" + capacitacion.getCaplugar() + "' "
				+ "duracion = '" + capacitacion.getCapduracion() + "' "
				+ "WHERE id = '" + capacitacion.getId() + "' ";
		       
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			actualizar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método actualizar");
			e.printStackTrace();
		}
		
		return actualizar;
	}

	@Override
	public boolean eliminar(Capacitacion capacitacion) {//----------Eliminar la capacitacion
		Connection con = null;
		Statement stm = null;

		boolean eliminar = false;

		String sql = "DELETE FROM capacitacion "
				+ "WHERE IDCAPACITACION = '" + capacitacion.getIdentificador() + "'";
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			eliminar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método eliminar");
			e.printStackTrace();
		}
		
		return eliminar;
	}

	@Override
	public void setearCapacitacion() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void crearCapac(Capacitacion capac) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Capacitacion obtenerCapacitacionporId(Capacitacion capacitacion) {//--------Seleccionar la capacitacion mediante un id
		
		Connection con = null;
		Statement stn = null;
		ResultSet rs = null;
		Capacitacion c = new Capacitacion();
		
		String sql = "SELECT FROM capacitacion "
				+ "WHERE IDCAPACITACION = '" + capacitacion.getIdentificador() + "'";
		
		try {
			con= EjemploConexion.conectar();
			stn = con.createStatement();
			rs = stn.executeQuery(sql);
			while (rs.next()) {
				c.setIdentificador(rs.getInt(1));
				c.setCapfecha(rs.getString(2));
				c.setCaphora(rs.getString(3));
				c.setCaplugar(rs.getString(4));
				c.setCapduracion(rs.getInt(5));
				c.setId(rs.getInt(6));
			}
				rs.close();
				stn.close();
				con.close();
				
				
		} catch(SQLException e) {
				System.out.println("Error: "
						+ "Clase impleCapacitacion, "
						+ "método registrar");
				e.printStackTrace();
		}
		
		return c;
	}

	@Override
	public boolean registrarUser(Usuario usuario) {
		boolean registrarUsuarior = false;
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO USUARIO values ('" 
				+ usuario.getNombre() + "','" 
				+ usuario.getApellidos() + "','" 
				+ usuario.getFecha() + "','" 
				+ usuario.getRun() + "','" 
				+ usuario.getId() + "')" ;
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			registrarUsuarior = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método registrarUser");
			e.printStackTrace();
		}
		
		return registrarUsuarior;
	}

	@Override
	public boolean registrar(Cliente cliente) {
	boolean registrarClient = false;
		
		Statement stm = null;
		
		Connection con = null;
		
		
		
		
		String sql = "INSERT INTO CLIENTE values ('" 
				+ cliente.getIdcliente() + "','" 
				+ cliente.getNombres() + "','" 
				+ cliente.getApellidos() + "','" 
				+ cliente.getTelefono() + "','" 
				+ cliente.getAfp() + "','" 
				+ cliente.getSalud() + "','" 
				+ cliente.getDireccion() + "','" 
				+ cliente.getComuna() + "','" 
		        + cliente.getEdad() + "','"
				+ cliente.getId() + "')";
		
		try {
			con = EjemploConexion.conectar();
			
			stm = con.createStatement();
			
			stm.execute(sql);
			
			registrarClient = true;
			stm.close();
			con.close();	
			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método registrarClient");
			e.printStackTrace();
		}
		
		return registrarClient;
	}

	@Override
	public List<Cliente> obtenerCliente() {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM "
				+ "cliente ORDER BY RUTCLIENTE";
		List<Cliente> listaCliente 
			= new ArrayList<Cliente>();
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				Cliente c = new Cliente();
				c.setIdcliente(rs.getInt(1));
				c.setNombres(rs.getString(2));
				c.setApellidos(rs.getString(3));
				c.setTelefono(rs.getString(4));
				c.setAfp(rs.getString(5));
				c.setSalud(rs.getInt(6));
				c.setDireccion(rs.getString(7));
				c.setComuna(rs.getString(8));
				c.setEdad(rs.getInt(9));
				c.setId(rs.getInt(10));
				listaCliente.add(c);
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método obtener");
			e.printStackTrace();
		}		
		
		return listaCliente;
	}

	@Override
	public boolean registrarProfesional(Profesional profesional) {
boolean registrarProfessional = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO PROFESIONAL values ('" 
				+ profesional.getRun() + "','" 
				+ profesional.getNombre() + "','" 
				+ profesional.getApellido() + "','" 
				+ profesional.getTelefono() + "','" 
				+ profesional.getTitulo() + "','" 
		        + profesional.getProyecto() + "','"
		 		+ profesional.getId() + "')";
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			registrarProfessional = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método registrarProfessional");
			e.printStackTrace();
		}
		
		return registrarProfessional;
	}

	@Override
	public List<Profesional> obtenerProfesional() {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM "
				+ "PROFESIONAL ORDER BY RUN_PROF";
		List<Profesional> listaProfessional = new ArrayList<Profesional>();
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				Profesional p = new Profesional();
				p.setRun(rs.getInt(1));
				p.setNombre(rs.getString(2));
				p.setApellido(rs.getString(3));
				p.setTelefono(rs.getInt(4));
				p.setTitulo(rs.getString(5));
				p.setProyecto(rs.getString(6));
				p.setIdusuario(rs.getInt(7));
				listaProfessional.add(p);
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método obtenerProfessional");
			e.printStackTrace();
		}		
		
		return listaProfessional;
	}

	@Override
	public boolean registrarAdministrativo(Administrativo administrativo) {
boolean registrarAdministrative = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO ADMINISTRATIVO values ('" 
				+ administrativo.getRun() + "','" 
				+ administrativo.getNombre() + "','" 
				+ administrativo.getApellido() + "','" 
				+ administrativo.getMail() + "','" 
		        + administrativo.getId() + "','"
	      		+ administrativo.getArea() + "')";
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			registrarAdministrative = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método registrarAdministrative");
			e.printStackTrace();
		}
		
		return registrarAdministrative;
	}

	@Override
	public List<Administrativo> obtenerAdministrativo() {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM "
				+ "ADMINISTRATIVO ORDER BY RUNADMIN";
		List<Administrativo> listaAdministrative = new ArrayList<Administrativo>();
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {
				Administrativo a = new Administrativo();
				a.setRun(rs.getInt(1));
				a.setNombre(rs.getString(2));
				a.setApellido(rs.getString(3));
				a.setMail(rs.getString(4));
				a.setArea(rs.getString(6));
				a.setIdusuario(rs.getInt(5));
				listaAdministrative.add(a);
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método obtenerAdministrative");
			e.printStackTrace();
		}		
		
		return listaAdministrative;
	}

	public Usuario obtenerUsuarioporId(Usuario usuario) {
		Connection con = null;
		Statement stn = null;
		ResultSet rs = null;
		Usuario u = new Usuario();
		
		String sql = "SELECT FROM usuario "
				+ "WHERE IDUSUARIO = '" + usuario.getId() + "'";
		
		try {
			con= EjemploConexion.conectar();
			stn = con.createStatement();
			rs = stn.executeQuery(sql);
			while (rs.next()) {
				u.setId(rs.getInt(1));
				
				
			}
				rs.close();
				stn.close();
				con.close();
				
				
		} catch(SQLException e) {
				System.out.println("Error: "
						+ "Clase impleCapacitacion, "
						+ "método registrar");
				e.printStackTrace();
		}
		
		return u;
	}

	
	public void crearContacto(Contacto contacto) {
		System.out.println(contacto.toString());
		
	}

	@Override
	public boolean actualizarCliente(Cliente cliente) {
		Connection con = null;
		Statement stm = null;

		boolean actualizar = false;

		String sql = "UPDATE CLIENTE SET "
				+ "CLIENTE_IDUSUARIO = '" + cliente.getIdusuario() + "', "
				+ "CLINOMBRES = '" + cliente.getNombres() + "', "
				+ "CLIAPELLIDOS = '" + cliente.getApellidos() + "', "
				+ "CLITELEFONO = '" + cliente.getTelefono() + "', "
				+ "CLIAFP = '" + cliente.getAfp() + "', "
				+ "CLISISTEMASALUD = '" + cliente.getSalud() + "', "
				+ "CLIDIRECCION = '" + cliente.getDireccion() + "', "
				+ "CLICOMUNA = '" + cliente.getComuna() + "', "
				+ "CLIEDAD = '" + cliente.getEdad() + "' "
		        + "WHERE RUTCLIENTE = '" + cliente.getIdcliente() + "'";
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			actualizar = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase ImpleCapacitacion, "
					+ "método actualizar");
			e.printStackTrace();
		}
		
		return actualizar;
	}

	@Override
	public Cliente obtenerClientexId(Cliente cliente) {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		Cliente c = new Cliente();
		String sql = "SELECT * FROM "
				+ "CLIENTE WHERE RUTCLIENTE= '" + cliente.getIdcliente() + "'";
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			
			while (rs.next()) {			
				c.setId(rs.getInt(10));
				c.setIdcliente(rs.getInt(1));
				c.setNombres(rs.getString(2));
				c.setApellidos(rs.getString(3));
				c.setTelefono(rs.getString(4));
				c.setAfp(rs.getString(5));
				c.setSalud(rs.getInt(6));
				c.setDireccion(rs.getString(7));
				c.setComuna(rs.getString(8));
				c.setEdad(rs.getInt(9));
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método obtenerClientPorId");
			e.printStackTrace();
		}		
		
		return c;
	}

	@Override
	public boolean actualizarAdministrativo(Administrativo administrativo) {
		Connection con = null;
		Statement stm = null;

		boolean actualizarAdmin = false;

		String sql = "UPDATE ADMINISTRATIVO SET "
				+ "ADM_IDUSUARIO = '" + administrativo.getIdusuario() + "', "
				+ "NOMBRE_ADM = '" + administrativo.getNombre() + "', "
				+ "APELLIDO_ADM = '" + administrativo.getApellido() + "', "
				+ "MAIL = '" + administrativo.getMail() + "', "
				+ "AREA_ADM = '" + administrativo.getArea() + "' "
		        + "WHERE RUNADMIN = '" + administrativo.getRun() + "'";
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			actualizarAdmin = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase ImpleCapacitacion, "
					+ "método actualizarAdmin");
			e.printStackTrace();
		}
		
		return actualizarAdmin;
	}

	@Override
	public Administrativo obtenerAdministrativoxId(Administrativo administrativo) {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		Administrativo a = new Administrativo();

		String sql = "SELECT * FROM "
				+ "ADMINISTRATIVO WHERE RUNADMIN = '" + administrativo.getRun() + "'";
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			

			while (rs.next()) {
				
				a.setId(rs.getInt(5));
				a.setRun(rs.getInt(1));
				a.setNombre(rs.getString(2));
				a.setApellido(rs.getString(3));
				a.setMail(rs.getString(4));
				a.setArea(rs.getString(6));
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método obtenerAdminPorId");
			e.printStackTrace();
		}		
		
		return a;
	}

	@Override
	public boolean actualizarProfesional(Profesional profesional) {
		Connection con = null;
		Statement stm = null;

		boolean actualizarPro = false;

		String sql = "UPDATE PROFESIONAL SET "
				+ "PROF_IDUSUARIO = '" + profesional.getIdusuario() + "', "
				+ "NOMBRE_PROF = '" + profesional.getNombre() + "', "
				+ "APELLIDO_PROF = '" + profesional.getApellido() + "', "
				+ "TELEFONO = '" + profesional.getTelefono() + "', "
				+ "TITULO_PROF = '" + profesional.getTitulo() + "', "
				+ "PROYEC_PROF = '" + profesional.getProyecto() + "' "
		        + "WHERE RUN_PROF = '" + profesional.getRun() + "'";
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			stm.execute(sql);
			actualizarPro = true;
			stm.close();
			con.close();			
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase ImpleCapacitacion, "
					+ "método actualizarPro");
			e.printStackTrace();
		}
		
		return actualizarPro;
	}

	@Override
	public Profesional obtenerProfesionalxId(Profesional profesional) {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		Profesional p = new Profesional();

		String sql = "SELECT * FROM "
				+ "PROFESIONAL WHERE RUN_PROF = '" + profesional.getRun() + "'";
		
		try {
			con = EjemploConexion.conectar();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);

			while (rs.next()) {

				p.setIdusuario(rs.getInt(7));
				p.setRun(rs.getInt(1));
				p.setNombre(rs.getString(2));
				p.setApellido(rs.getString(3));
				p.setTelefono(rs.getInt(4));
				p.setTitulo(rs.getString(5));
				p.setProyecto(rs.getString(6));
			}
			
			rs.close();
			stm.close();
			con.close();
		}catch(SQLException e) {
			System.out.println("Error: "
					+ "Clase impleCapacitacion, "
					+ "método obtenerProfessional");
			e.printStackTrace();
		}		
		
		return p;
	}
	
}


