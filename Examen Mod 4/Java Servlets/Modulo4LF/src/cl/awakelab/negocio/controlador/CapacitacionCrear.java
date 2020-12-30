package cl.awakelab.negocio.controlador;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.negocio.dao.impleCapacitacion;
import cl.awakelab.negocio.model.Capacitacion;

/**
 * Servlet implementation class GuardarCliente
 */
@WebServlet("/CapacitacionCrear")
public class CapacitacionCrear extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @return 
     * @see HttpServlet#HttpServlet()
     */
    public CapacitacionCrear() {
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
		String fecha = request.getParameter("txtcedula");
		String hora = request.getParameter("txtnombre");
		String lugar = request.getParameter("txtapellido");
		int duracion = Integer.parseInt(request.getParameter("txtnombres"));
		int idcliente = Integer.parseInt(request.getParameter("txtidcliente"));

		Capacitacion cap = new Capacitacion();
		cap.setIdentificador(id);
		cap.setCapfecha(fecha);
		cap.setCaphora(hora);
		cap.setCaplugar(lugar);
		cap.setCapduracion(duracion);
		cap.setId(idcliente);
		
		impleCapacitacion clidao = new impleCapacitacion();
		boolean resultado = clidao.registrar(cap);

		request.setAttribute("result", resultado);
		request.getRequestDispatcher("msgresultado.jsp").forward(request, response);
	}

}
