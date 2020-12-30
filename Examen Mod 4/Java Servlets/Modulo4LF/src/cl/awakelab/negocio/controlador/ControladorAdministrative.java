package cl.awakelab.negocio.controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.negocio.dao.impleCapacitacion;
//import cl.awakelab.negocio.model.user;
import cl.awakelab.negocio.model.Administrativo;

/**
 * Servlet implementation class ControladorAdministrativo
 */
@WebServlet("/ControladorAdministrative")
public class ControladorAdministrative extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorAdministrative() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet (
			HttpServletRequest request, 
			HttpServletResponse response
			) throws ServletException, IOException {
		impleCapacitacion Admindao = new impleCapacitacion();
		List<Administrativo> listaAdmin = new ArrayList<Administrativo>();
		listaAdmin = Admindao.obtenerAdministrativo();
		request.setAttribute("ladmin", listaAdmin);
		request.getRequestDispatcher
		("listaadministrative.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost (
			HttpServletRequest request, 
			HttpServletResponse response
			) throws ServletException, IOException {
		doGet(request, response);
	}

}