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
 * Servlet implementation class ModificarClient
 */
@WebServlet("/ModificarClient")
public class ModificarClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarClient() {
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
		// doGet(request, response);
		
		int id = Integer.parseInt(request.getParameter("txtrun"));
		int run = Integer.parseInt(request.getParameter("hdnidcliente"));
		String nombre = request.getParameter("txtnombre");
		String apellido = request.getParameter("txtapellido");
		String fono = request.getParameter("txtfono");
		String afp = request.getParameter("txtafp");
		int salud = Integer.parseInt(request.getParameter("txtsalud"));
		String direccion = request.getParameter("txtdireccion");
		String comuna = request.getParameter("txtcomuna");
		int edad = Integer.parseInt(request.getParameter("txtedad"));
		
		Cliente cliente = new Cliente();
		cliente.setIdusuario(id);
		cliente.setIdcliente(run);
		cliente.setNombre(nombre);
		cliente.setApellidos(apellido);
		cliente.setTelefono(fono);
		cliente.setAfp(afp);
		cliente.setSalud(salud);
		cliente.setDireccion(direccion);
		cliente.setComuna(comuna);
		cliente.setEdad(edad);
		
		impleCapacitacion clientdao = new impleCapacitacion();
		boolean resultado = clientdao.actualizarCliente(cliente);
		
		request.setAttribute("result" , resultado);
		request.getRequestDispatcher("msgresultado.jsp").forward(request , response);
	}

}
