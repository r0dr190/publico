package cl.awakelab.negocio.model;

public class Cliente extends Usuario{

	private int idcliente;
	private String nombres;
	private String apellidos;
	private String telefono;
	private String afp;
	private int salud;
	private String direccion;
	private String comuna;
	private int edad;
	private int idusuario;
	public Cliente() {
		super();
	}

	public Cliente(int idcliente, String nombres, String apellidos, String telefono, String afp, int salud,
			String direccion, String comuna, int edad) {
		super();
		this.idcliente = idcliente;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.afp = afp;
		this.salud = salud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
		this.setIdusuario(getId());
	}

	public int getIdcliente() {
		return idcliente;
	}

	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getAfp() {
		return afp;
	}

	public void setAfp(String afp) {
		this.afp = afp;
	}

	public int getSalud() {
		return salud;
	}

	public void setSalud(int salud) {
		this.salud = salud;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	@Override
	public String toString() {
		return "Cliente [idcliente=" + idcliente + ", nombres=" + nombres + ", apellidos=" + apellidos + ", telefono="
				+ telefono + ", afp=" + afp + ", salud=" + salud + ", direccion=" + direccion + ", comuna=" + comuna
				+ ", edad=" + edad + ", idusuario=" + getId() + "]";
	}

	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}


	
	
}
	