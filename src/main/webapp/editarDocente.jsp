<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Modelo.Docente" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Docente</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light p-4">

<div class="container">
    <h2 class="mb-4 text-primary">Editar Docente</h2>

    <%
        Docente d = (Docente) request.getAttribute("docente");
    %>

    <form action="DocenteController" method="post" class="bg-white p-4 rounded shadow-sm" style="max-width: 600px;">
        <input type="hidden" name="accion" value="editar"/>
        <input type="hidden" name="txtid" value="<%= d.getIddoc() %>"/>
        <div class="mb-3">
            <label class="form-label">Nombre:</label>
            <input type="text" name="txtnombre" value="<%= d.getNomdoc() %>" class="form-control" required/>
        </div>
        <div class="mb-3">
            <label class="form-label">Apellido:</label>
            <input type="text" name="txtapellido" value="<%= d.getApedoc() %>" class="form-control" required/>
        </div>
        <div class="mb-3">
            <label class="form-label">Especialidad:</label>
            <input type="text" name="txtespecialidad" value="<%= d.getEspdoc() %>" class="form-control" required/>
        </div>
        <div class="mb-3">
            <label class="form-label">Sueldo:</label>
            <input type="number" step="0.01" name="txtsueldo" value="<%= d.getSuedoc() %>" class="form-control" required/>
        </div>
        <div class="mb-3">
            <label class="form-label">Género:</label>
            <input type="text" name="txtgenero" value="<%= d.getGendoc() %>" class="form-control" required/>
        </div>
        <div class="mb-3">
            <label class="form-label">Correo:</label>
            <input type="email" name="txtcorreo" value="<%= d.getCordoc() %>" class="form-control" required/>
        </div>
        <div class="mb-3">
            <label class="form-label">Fecha de Nacimiento:</label>
            <input type="date" name="txtnacimiento" value="<%= d.getFncdoc() %>" class="form-control" required/>
        </div>
        <button type="submit" class="btn btn-success w-100">Actualizar</button>
    </form>
    <a href="DocenteController?accion=listar" class="d-inline-block mt-3 text-decoration-none text-primary fw-semibold">Volver a la lista</a>
</div>W	
<!-- Bootstrap Bundle JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
