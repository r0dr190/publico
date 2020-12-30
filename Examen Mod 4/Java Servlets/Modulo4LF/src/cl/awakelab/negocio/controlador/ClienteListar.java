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
import cl.awakelab.negocio.model.Cliente;

@WebServlet("/ClienteListar")
public class ClienteListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ClienteListar() {
        super();
    }

	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response
			) throws ServletException, IOException {
		impleCapacitacion clidao = new impleCapacitacion();
		List<Cliente> listaclientes = new ArrayList<Cliente>();
		listaclientes = clidao.obtenerCliente();
		request.setAttribute("lclientes", listaclientes);
		request.getRequestDispatcher
		("listaclientes.jsp").forward(request, response);
	}

	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response
			) throws ServletException, IOException {
		doGet(request, response);
	}

}
