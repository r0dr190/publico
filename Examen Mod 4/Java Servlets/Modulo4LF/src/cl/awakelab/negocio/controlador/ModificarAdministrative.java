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
 * Servlet implementation class ModificarAdministrative
 */
@WebServlet("/ModificarAdministrative")
public class ModificarAdministrative extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarAdministrative() {
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
		
		int run = Integer.parseInt(request.getParameter("hdnidadmin"));
		int id = Integer.parseInt(request.getParameter("txtrun"));
		String nombres = request.getParameter("txtnombres");
		String apellidos = request.getParameter("txtapellidos");
		String mail = request.getParameter("txtmail");
		String area = request.getParameter("txtarea");
		
		Administrativo admin = new Administrativo();
		admin.setIdusuario(id);
		admin.setRun(run);
		admin.setNombre(nombres);
		admin.setApellido(apellidos);
		admin.setMail(mail);
		admin.setArea(area);
		
		impleCapacitacion AdministrativeDao = new impleCapacitacion();
		boolean resultado = AdministrativeDao.actualizarAdministrativo(admin);
		
		request.setAttribute("result" , resultado);
		request.getRequestDispatcher("msgresultado.jsp").forward(request , response);
	}

}
