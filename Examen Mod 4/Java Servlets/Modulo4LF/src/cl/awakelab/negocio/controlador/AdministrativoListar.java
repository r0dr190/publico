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
import cl.awakelab.negocio.model.Administrativo;

/**
 * Servlet implementation class ControladorUsuario
 */
@WebServlet("/AdministrativoListar")
public class AdministrativoListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdministrativoListar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		impleCapacitacion userdao = new impleCapacitacion();
		List<Administrativo> listaAdmin = new ArrayList<Administrativo>();
		listaAdmin = userdao.obtenerAdministrativo();
		request.setAttribute("ladmin", listaAdmin);
		request.getRequestDispatcher("listaadministrativo.jsp").forward(request, response);
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
