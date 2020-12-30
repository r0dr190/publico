package cl.awakelab.negocio.controlador;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.negocio.dao.impleCapacitacion;
import cl.awakelab.negocio.model.Profesional;

/**
 * Servlet implementation class EditarProfessional
 */
@WebServlet("/ProfesionalEditar")
public class ProfesionalEditar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfesionalEditar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int idpro = Integer.parseInt(request.getParameter("id"));
		
		impleCapacitacion prodao = new impleCapacitacion();
		
		Profesional editar = new Profesional();
		editar.setRun(idpro);
		
		Profesional datospro = prodao.obtenerProfesionalxId(editar);
		
		request.setAttribute("pro" , datospro);
		request.getRequestDispatcher("formeditarprofessional.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
