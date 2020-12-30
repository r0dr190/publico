package cl.awakelab.negocio.model;

public class Usuario {
		
	

	private String nombre, apellidos, fecha;
	private int run, id;
	
	public Usuario() {
		super();
	}

	public Usuario(String nombre, String apellidos, String fecha, int run, int id) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.fecha = fecha;
		this.run = run;
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public int getRun() {
		return run;
	}

	public void setRun(int run) {
		this.run = run;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Usuario [nombre=" + nombre + ", apellidos=" + apellidos + ", fecha=" + fecha + ", run=" + run + ", id="
				+ id + "]";
	}

	
		
}
