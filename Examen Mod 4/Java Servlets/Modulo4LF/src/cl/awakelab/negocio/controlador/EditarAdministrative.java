package cl.awakelab.negocio.controlador;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.negocio.dao.impleCapacitacion;
import cl.awakelab.negocio.model.Administrativo;

/**
 * Servlet implementation class EditarAdministrative
 */
@WebServlet("/EditarAdministrative")
public class EditarAdministrative extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarAdministrative() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Se llama al idadmin y se guarda en "idadmin"
		
		int idadmin = Integer.parseInt(request.getParameter("id"));		
		// Se crea instancia de la implementación del admin 
		impleCapacitacion AdministrativeDao = new impleCapacitacion(); 
		
		Administrativo editar = new Administrativo();  
		editar.setRun(idadmin);
		
		Administrativo datosAdmin = AdministrativeDao.obtenerAdministrativoxId(editar); // Se obtine el dato del Admin a editar
		
		request.setAttribute("datosadmin" , datosAdmin);
		request.getRequestDispatcher("formeditaradministrative.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
