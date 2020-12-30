package cl.awakelab.negocio.model;
import java.util.Scanner;
/**
 * 
 * @author Luis Felipe, Juan Pablo Olguin, Rolando Lazcano, Michel Montero, Leonard Rodriguez.
 * 
 * @version Evaluacion Final version 7.0
 * 
 * @see http://www.awakelab.cl
 *
 */
public class Administrativo extends Usuario{
	private int run;
	private String nombre;
	private String apellido;
	private String mail;
	private String area;
	private int idusuario;
	
	public Administrativo() {
		super();
	}

	public Administrativo(int run, String nombre, String apellido, String mail, String area) {
		super();
		this.run = run;
		this.nombre = nombre;
		this.apellido = apellido;
		this.mail = mail;
		this.setIdusuario(getId());
		this.area = area;
		
	}

	public int getRun() {
		return run;
	}

	public void setRun(int run) {
		this.run = run;
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

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	@Override
	public String toString() {
		return "Administrativo [run=" + run + ", nombre=" + nombre + ", apellido=" + apellido + ", mail=" + mail
				+ ", area=" + area + ", idusuario=" + getId() + "]";
	}

	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}

	
	
	
	

}
