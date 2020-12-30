package cl.awakelab.negocio.model;




public class Capacitacion extends Cliente {


/* declaracion de los atributos de la clase y objetos
 */
	private int identificador;
	private String capfecha;
	private String caphora;
	private String caplugar;
	private int capduracion;
	
	
public Capacitacion() {
	super();
}


public Capacitacion(int identificador, String capfecha, String caphora, String caplugar, int capduracion) {
	super();
	this.identificador = identificador;
	this.capfecha = capfecha;
	this.caphora = caphora;
	this.caplugar = caplugar;
	this.capduracion = capduracion;
	
}


public int getIdentificador() {
	return identificador;
}


public String getCapfecha() {
	return capfecha;
}


public String getCaphora() {
	return caphora;
}


public String getCaplugar() {
	return caplugar;
}


public int getCapduracion() {
	return capduracion;
}


public void setIdentificador(int identificador) {
	this.identificador = identificador;
}


public void setCapfecha(String capfecha) {
	this.capfecha = capfecha;
}


public void setCaphora(String caphora) {
	this.caphora = caphora;
}


public void setCaplugar(String caplugar) {
	this.caplugar = caplugar;
}


public void setCapduracion(int capduracion) {
	this.capduracion = capduracion;
}


@Override
public String toString() {
	return "Capacitacion [identificador=" + identificador + ", capfecha=" + capfecha + ", caphora=" + caphora
			+ ", caplugar=" + caplugar + ", capduracion=" + capduracion + ", getId()=" + getId() + "]";
}






}
