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
import cl.awakelab.negocio.model.Profesional;

/**
 * Servlet implementation class ControladorUsuario
 */
@WebServlet("/ProfesionalListar")
public class ProfesionalListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfesionalListar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		impleCapacitacion userdao = new impleCapacitacion();
		List<Profesional> listaProfesional = new ArrayList<Profesional>();
		listaProfesional = userdao.obtenerProfesional();
		request.setAttribute("lprof", listaProfesional);
		request.getRequestDispatcher("listaprofesional.jsp").forward(request, response);
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
