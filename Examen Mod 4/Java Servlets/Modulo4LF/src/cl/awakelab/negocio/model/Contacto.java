package cl.awakelab.negocio.model;

public class Contacto {

	private String nombre;
	private String apellido;
	private String correo;
	private int telefono;
	private String mensaje;
	
	
	public Contacto() {
		super();
	}


	public Contacto(String nombre, String apellido, String correo, int telefono, String mensaje) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.correo = correo;
		this.telefono = telefono;
		this.mensaje = mensaje;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellido() {
		return apellido;
	}


	public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	public String getCorreo() {
		return correo;
	}


	public void setCorreo(String correo) {
		this.correo = correo;
	}


	public int getTelefono() {
		return telefono;
	}


	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}


	public String getMensaje() {
		return mensaje;
	}


	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}


	@Override
	public String toString() {
		return "Contacto [nombre=" + nombre + ", apellido=" + apellido + ", correo=" + correo + ", telefono=" + telefono
				+ ", mensaje=" + mensaje + "]";
	}
	
	
	
}
