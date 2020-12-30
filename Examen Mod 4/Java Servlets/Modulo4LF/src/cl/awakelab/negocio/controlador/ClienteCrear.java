package cl.awakelab.negocio.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.negocio.dao.impleCapacitacion;
import cl.awakelab.negocio.model.Cliente;
import cl.awakelab.negocio.model.Usuario;

/**
 * Servlet implementation class GuardarClient
 */
@WebServlet("/ClienteCrear")
public class ClienteCrear extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClienteCrear() {
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
		
		
		int run = Integer.parseInt(request.getParameter("txtrun"));
		String nombre = request.getParameter("txtnombre");
		String apellido = request.getParameter("txtapellido");
		String fono = request.getParameter("txtfono");
		String afp = request.getParameter("txtafp");
		int salud = Integer.parseInt(request.getParameter("txtsalud"));
		String direccion = request.getParameter("txtdireccion");
		String comuna = request.getParameter("txtcomuna");
		int edad = Integer.parseInt(request.getParameter("txtedad"));
		int idusuario = Integer.parseInt(request.getParameter("txtidusuario"));
		
		Cliente cliente = new Cliente();
		cliente.setIdcliente(run);
		cliente.setNombres(nombre);
		cliente.setApellidos(apellido);
		cliente.setTelefono(fono);
		cliente.setAfp(afp);
		cliente.setSalud(salud);
		cliente.setDireccion(direccion);
		cliente.setComuna(comuna);
		cliente.setEdad(edad);
		cliente.setId(idusuario);
		
		impleCapacitacion clientdao = new impleCapacitacion();
		boolean resultadocli = clientdao.registrar(cliente);
		
		request.setAttribute("result" , resultadocli);
		request.getRequestDispatcher("msgresultado.jsp").forward(request , response);
		
	}

}
