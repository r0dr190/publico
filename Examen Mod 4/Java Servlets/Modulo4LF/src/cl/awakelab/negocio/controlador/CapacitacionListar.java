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
import cl.awakelab.negocio.model.Capacitacion;

@WebServlet("/CapacitacionListar")
public class CapacitacionListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CapacitacionListar() {
        super();
    }

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		impleCapacitacion clidao = new impleCapacitacion();
		List<Capacitacion> listaCapacitacion = new ArrayList<Capacitacion>();
		listaCapacitacion = clidao.obtener();
		request.setAttribute("lcapacitacion", listaCapacitacion);
		request.getRequestDispatcher ("ListarCapacitacion.jsp").forward(request, response);
	}

	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response
			) throws ServletException, IOException {
		doGet(request, response);
	}

}
