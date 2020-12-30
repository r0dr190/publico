package cl.awakelab.negocio.model;

public class user {
	
	private int id;
	private String rut, nombre, fecha;
	
	public user() {
		super();
	}

	public user(int id, String rut, String nombre, String fecha) {
		super();
		this.id = id;
		this.rut = rut;
		this.nombre = nombre;
		this.fecha = fecha;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	@Override
	public String toString() {
		return "user [id=" + id + ", rut=" + rut + ", nombre=" + nombre + ", fecha=" + fecha + "]";
	}

}