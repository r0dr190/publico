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
import cl.awakelab.negocio.model.Usuario;
import cl.awakelab.negocio.model.user;

/**
 * Servlet implementation class ControladorUsuario
 */
@WebServlet("/UsuarioListar")
public class UsuarioListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioListar() {
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
		impleCapacitacion userdao = new impleCapacitacion();
		List<Usuario> listaUser = new ArrayList<Usuario>();
		listaUser = userdao.obtenerUser();
		request.setAttribute("luser", listaUser);
		request.getRequestDispatcher("listausuarios.jsp").forward(request, response);
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
