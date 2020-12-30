package cl.awakelab.negocio.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.negocio.dao.impleCapacitacion;
import cl.awakelab.negocio.model.Capacitacion;

/**
 * Servlet implementation class CapacitacionEliminar
 */
@WebServlet("/CapacitacionEliminar")
public class CapacitacionEliminar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CapacitacionEliminar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idcapacitacion = Integer.parseInt(request.getParameter("id"));
		
		Capacitacion cap = new Capacitacion();
		cap.setIdentificador(idcapacitacion);
		
		impleCapacitacion implecap = new impleCapacitacion();
		boolean reselim = implecap.eliminar(cap);
		
		request.setAttribute("result", reselim);
		request.getRequestDispatcher("msgresultado.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
