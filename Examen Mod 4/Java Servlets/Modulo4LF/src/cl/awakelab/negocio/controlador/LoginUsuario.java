package cl.awakelab.negocio.controlador;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionIdListener;

/**
 * Servlet implementation class LoginUsuario
 */
@WebServlet("/LoginUsuario")
public class LoginUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginUsuario() {
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
		doGet(request, response);
		String nombre = (String) request.getParameter("nombre");
	    String clave = (String) request.getParameter("clave");
	        
	    if (nombre.equalsIgnoreCase("admin") && clave.equalsIgnoreCase("1234")) {
	      	HttpSession misesion = request.getSession();
	        misesion.setAttribute("nombreSession" , nombre );
	        misesion.setAttribute("claveSession" , clave );
	        request.getRequestDispatcher("/index.jsp").forward(request , response);
	        }
	        else {
	        	request.getRequestDispatcher("/Registro.jsp").forward(request , response);
	        	
	   
		
	}
	        
}}

