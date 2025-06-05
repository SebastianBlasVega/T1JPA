<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Modelo.Docente" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Docentes</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light p-4">
<div class="container">
    <h1 class="mb-4 text-primary">Lista de Docentes</h1>
    <a href="index.jsp" class="btn btn-secondary mb-3">Volver al Formulario</a> 
    <table class="table table-striped table-bordered shadow-sm bg-white">
        <thead class="table-primary">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Especialidad</th>
                <th>Sueldo</th>
                <th>Género</th>
                <th>Correo</th>
                <th>Fecha Nacimiento</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Docente> lista = (List<Docente>) request.getAttribute("lista");
                if (lista != null && !lista.isEmpty()) {
                    for (Docente d : lista) {
            %>
            <tr>
                <td><%= d.getIddoc() %></td>
                <td><%= d.getNomdoc() %></td>
                <td><%= d.getApedoc() %></td>
                <td><%= d.getEspdoc() %></td>
                <td>S/<%= String.format("%.2f", d.getSuedoc()) %></td>
                <td><%= d.getGendoc() %></td>
                <td><%= d.getCordoc() %></td>
                <td><%= d.getFncdoc() != null ? d.getFncdoc().toString() : "" %></td>
                <td>
                    <a href="DocenteController?accion=cargar&id=<%= d.getIddoc() %>"class="btn btn-warning btn-sm">Editar</a>
                    <a href="DocenteController?accion=eliminar&id=<%= d.getIddoc() %>" class="btn btn-danger btn-sm">Eliminar</a>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="8" class="text-center text-muted">No hay docentes registrados.</td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>
<!--Bootstrap JS Bundle (opcional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
