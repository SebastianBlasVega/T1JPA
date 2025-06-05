package Controllers;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import Modelo.Docente;
import Modelo.DocenteService;

/**
 * Servlet implementation class DocenteController
 */
public class DocenteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public DocenteController() {
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//listar docentes
		DocenteService servicio = new DocenteService();
		String accion = request.getParameter("accion");
		switch (accion != null ? accion : "") {
        case "listar":
            request.setAttribute("lista", servicio.listarDocentes());
            request.getRequestDispatcher("listaDocentes.jsp").forward(request, response);
            break;

        case "cargar":
            int idCargar = Integer.parseInt(request.getParameter("id"));
            Docente docente = servicio.buscarDocentePorId(idCargar);
            request.setAttribute("docente", docente);
            request.getRequestDispatcher("editarDocente.jsp").forward(request, response);
            break;

        case "eliminar":
            int idEliminar = Integer.parseInt(request.getParameter("id"));
            servicio.eliminarDocente(idEliminar);
            response.sendRedirect("DocenteController?accion=listar");
          
            break;

        default:
            response.sendRedirect("DocenteController?accion=listar");
            break;
    }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DocenteService servicio = new DocenteService();
		String accion = request.getParameter("accion");
		 switch (accion != null ? accion : "") {
         case "crear":
             Docente nuevo = construirDocenteDesdeRequest(request, false);
             servicio.crearDocente(nuevo);
             response.sendRedirect("DocenteController?accion=listar");
             break;

         case "editar":
             Docente actualizado = construirDocenteDesdeRequest(request, true);
             servicio.editarDocente(actualizado);
             response.sendRedirect("DocenteController?accion=listar");
             break;

         default:
             response.sendRedirect("DocenteController?accion=listar");
             break;
     }
	}
	private Docente construirDocenteDesdeRequest(HttpServletRequest request, boolean incluirId) {
	    Docente docente = new Docente();

	    if (incluirId) {
	        String idStr = request.getParameter("txtid");
	        if (idStr != null && !idStr.isEmpty()) {
	            docente.setIddoc(Integer.parseInt(idStr));
	        } else {
	            throw new IllegalArgumentException("ID del docente no fue proporcionado.");
	        }
	    }
	    docente.setNomdoc(request.getParameter("txtnombre"));
	    docente.setApedoc(request.getParameter("txtapellido"));
	    docente.setEspdoc(request.getParameter("txtespecialidad"));
	    docente.setSuedoc(new BigDecimal(request.getParameter("txtsueldo")));
	    docente.setGendoc(request.getParameter("txtgenero").charAt(0));
	    docente.setCordoc(request.getParameter("txtcorreo"));
	    docente.setFncdoc(java.sql.Date.valueOf(request.getParameter("txtnacimiento")).toLocalDate());

	    return docente;
	}
}
