package cl.awakelab.negocio.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.negocio.dao.impleCapacitacion;
import cl.awakelab.negocio.model.Contacto;

/**
 * Servlet implementation class ContactoCrear
 */
@WebServlet("/ContactoCrear")
public class ContactoCrear extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactoCrear() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("Contacto.jsp").forward(request, response);
		System.out.println("Entro por get");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Entro por post");

		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("txtapellido");
		String correo = request.getParameter("txtcorreoelectronico");
		int telefono = Integer.parseInt(request.getParameter("txttelefono"));
		String mensaje = request.getParameter("txtmensaje");
		
		Contacto nuevocont = new Contacto(nombre, apellido, correo, telefono, mensaje);
		
		impleCapacitacion implecap = new impleCapacitacion();
		implecap.crearContacto(nuevocont);
		
		boolean resultado = true;
		request.setAttribute("result", resultado);
		request.getRequestDispatcher("/msgresultado.jsp").forward(request, response);
	}

}
