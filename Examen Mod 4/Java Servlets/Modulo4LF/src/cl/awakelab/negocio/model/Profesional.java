package cl.awakelab.negocio.model;

public class Profesional extends Usuario{
	private int run;
	private String nombre;
	private String apellido;
	private int telefono;
	private String titulo;
	private String proyecto;
	private int idusuario;
	
	
	public Profesional() {
		super();
	}


	public Profesional(int run, String nombre, String apellido, int telefono, String titulo, String proyecto, int idusuario) {
		super();
		this.run = run;
		this.nombre = nombre;
		this.apellido = apellido;
		this.telefono = telefono;
		this.titulo = titulo;
		this.proyecto = proyecto;
		this.setIdusuario(getId());
	}


	public int getRun() {
		return run;
	}


	public String getNombre() {
		return nombre;
	}


	public String getApellido() {
		return apellido;
	}


	public int getTelefono() {
		return telefono;
	}


	public String getTitulo() {
		return titulo;
	}


	public String getProyecto() {
		return proyecto;
	}


	public void setRun(int run) {
		this.run = run;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public void setProyecto(String proyecto) {
		this.proyecto = proyecto;
	}


	@Override
	public String toString() {
		return "Profesional [run=" + run + ", nombre=" + nombre + ", apellido=" + apellido + ", telefono=" + telefono
				+ ", titulo=" + titulo + ", proyecto=" + proyecto + ", idusuario" + getId() + "]";
	}


	public int getIdusuario() {
		return idusuario;
	}


	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}


	
	
	
	
}

