package cl.awakelab.negocio.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.negocio.dao.impleCapacitacion;
import cl.awakelab.negocio.model.Cliente;

/**
 * Servlet implementation class ClienteEditar
 */
@WebServlet("/ClienteEditar")
public class ClienteEditar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClienteEditar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int idclient = Integer.parseInt(request.getParameter("id"));
		
		impleCapacitacion clientDao = new impleCapacitacion();
		
		Cliente editar = new Cliente();
		editar.setIdcliente(idclient);
		
		Cliente datoscli = clientDao.obtenerClientexId(editar);
		
		request.setAttribute("cli" , datoscli);
		request.getRequestDispatcher("formeditarclient.jsp").forward(request , response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
