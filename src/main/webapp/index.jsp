<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light p-4">
<h1 class="text-primary mb-3">Holiwis</h1>
<h2 class="mb-4">Agregar Docente</h2>
<form action="DocenteController" method="post" class="bg-white p-4 rounded shadow-sm" style="max-width: 500px;">
  <!-- Campo oculto para acción -->
  <input type="hidden" name="accion" value="crear">
  <!-- Resto del formulario igual... -->
  <div class="mb-3">
    <label for="nombre" class="form-label">Nombre:</label>
    <input type="text" id="nombre" name="txtnombre" placeholder="Ingrese Nombre" required class="form-control">
  </div>
  <div class="mb-3">
    <label for="apellido" class="form-label">Apellido:</label>
    <input type="text" id="apellido" name="txtapellido" placeholder="Ingrese Apellido" required class="form-control">
  </div>

  <div class="mb-3">
    <label for="especialidad" class="form-label">Especialidad:</label>
    <input type="text" id="especialidad" name="txtespecialidad" placeholder="Ingrese Especialidad" required class="form-control">
  </div>

  <div class="mb-3">
    <label for="sueldo" class="form-label">Sueldo:</label>
    <input type="number" id="sueldo" name="txtsueldo" step="0.01" placeholder="Ingrese Sueldo" required class="form-control">
  </div>
  <div class="mb-3">
    <label for="genero" class="form-label">Género:</label>
    <select id="genero" name="txtgenero" required class="form-select">
        <option value="">Seleccione Género</option>
        <option value="M">Masculino</option>
        <option value="F">Femenino</option>
    </select>
  </div>
  <div class="mb-3">
    <label for="correo" class="form-label">Email:</label>
    <input type="email" id="email" name="txtcorreo" placeholder="Ingrese Email" required class="form-control">
  </div>
  <div class="mb-3">
    <label for="nacimiento" class="form-label">Fecha de Nacimiento:</label>
    <input type="date" id="nacimiento" name="txtnacimiento" required class="form-control">
  </div>
  <button type="submit" class="btn btn-primary w-100">Agregar Docente</button>
</form>
<a href="DocenteController?accion=listar" class="d-inline-block mt-4 text-decoration-none text-primary fw-semibold">Ver Lista de Docentes</a>
<!-- Bootstrap JS Bundle CDN (optional, for interactive components) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
