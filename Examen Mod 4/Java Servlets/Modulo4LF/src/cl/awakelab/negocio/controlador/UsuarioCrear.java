package cl.awakelab.negocio.controlador;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.negocio.dao.impleCapacitacion;
import cl.awakelab.negocio.model.Usuario;
//import cl.awakelab.negocio.model.Cliente;
import cl.awakelab.negocio.model.user;

/**
 * Servlet implementation class GuardarUsuario
 */
@WebServlet("/UsuarioCrear")
public class UsuarioCrear extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioCrear() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		int id = Integer.parseInt(request.getParameter("txtid"));
		int run = Integer.parseInt(request.getParameter("txtrun"));
		String nombre = request.getParameter("txtnombre");
		String apellidos = request.getParameter("txtapellidos");
		String fecha = request.getParameter("txtfecha");

		Usuario user = new Usuario();
		user.setId(id);
		user.setRun(run);
		user.setNombre(nombre);
		user.setApellidos(apellidos);
		user.setFecha(fecha);

		
		impleCapacitacion userdao = new impleCapacitacion();
		boolean resultado = userdao.registrarUser(user);

		request.setAttribute("result", resultado);
		request.getRequestDispatcher("msgcrearusuario.jsp").forward(request, response);
	}

}
