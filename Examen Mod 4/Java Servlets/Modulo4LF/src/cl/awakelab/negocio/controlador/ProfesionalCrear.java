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
 * Servlet implementation class GuardarProfessional
 */
@WebServlet("/ProfesionalCrear")
public class ProfesionalCrear extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfesionalCrear() {
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
		String nombres = request.getParameter("txtnombres");
		String apellidos = request.getParameter("txtapellidos");
		int fono = Integer.parseInt(request.getParameter("txtfono"));
		String titulo = request.getParameter("txttitulo");
		String proyecto = request.getParameter("txtproyecto");
		int idusuario = Integer.parseInt(request.getParameter("txtidusuario"));
		
		Profesional pro = new Profesional();
		pro.setRun(run);
		pro.setNombre(nombres);
		pro.setApellido(apellidos);
		pro.setTelefono(fono);
		pro.setTitulo(titulo);
		pro.setProyecto(proyecto);
		pro.setId(idusuario);
		
		impleCapacitacion ProfessionalDao = new impleCapacitacion();
		boolean resultado = ProfessionalDao.registrarProfesional(pro);
		
		request.setAttribute("result" , resultado);
		request.getRequestDispatcher("msgresultado.jsp").forward(request , response);;
		
	}

}
