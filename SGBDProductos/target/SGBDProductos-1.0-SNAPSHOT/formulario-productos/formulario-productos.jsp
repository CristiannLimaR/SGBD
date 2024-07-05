<%-- 
    Document   : formulario-productos
    Created on : 4/07/2024, 15:51:55
    Author     : informatica
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">    </head>
</head>
<body>

    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
<symbol id="check-circle-fill" viewBox="0 0 16 16">
    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
</symbol>
<symbol id="info-fill" viewBox="0 0 16 16">
    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
</symbol>
<symbol id="exclamation-triangle-fill" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</symbol>
</svg>
<nav class="navbar navbar-dark bg-dark fixed-top position-relative">
    <div class="container-fluid">
        <a class="navbar-brand" href="./index.jsp">Sistemas de Gestión de Productos</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Sistemas de Gestión de Productos</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="../index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="./formulario-productos.jsp">Formulario</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../lista-productos/lista-productos.jsp">Lista de Productos</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<div>
    <%String mensaje = "  ";%>
    <% mensaje = (String) request.getAttribute("mensaje");%>
    <% ArrayList<String> datosProducto = (ArrayList) request.getAttribute("datosProducto"); %>
    <% if (datosProducto != null) {%>

    <% for (String producto : datosProducto) {%>
    <ul>
        <li><%=producto%></li>
    </ul>
    <%}%>
    <%}%>

    <%if (mensaje != null) {%>
    <% if (mensaje == "Producto enviado con exito!") {%>
    <div class="alert alert-success d-flex align-items-center" role="alert">
        <svg class="bi flex-shrink-0 me-2" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
        <div>
            <%=mensaje%>
        </div>
    </div>
    <%} else {%>
    <div class="alert alert-danger d-flex align-items-center m-5" role="alert">
        <svg class="bi flex-shrink-0 me-2" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
        <div>
            <%=mensaje%>
        </div>
    </div>
    <%}%>
    <% }%>


</div>
<div class="container w-100">
    <form action="/SGBDProductos/producto-servlet" method="post" enctype="multipart/form-data" class=" mt-3">
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="nombreproducto" name="nombreProducto" placeholder="">
            <label for="nombreproducto">Nombre Del Producto</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="marcaproducto" name="marcaProducto" placeholder="">
            <label for="marcaproducto">Marca Del Producto</label>
        </div>
        <div class="form-floating mb-3">
            <textarea class="form-control" placeholder="Leave a comment here" id="descripcionproducto" name="descripcionProducto" style="height: 100px"></textarea>
            <label for="descripcionproducto">Descripción</label>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Q.</span>
            <input type="text" name ="precioProducto" class="form-control" aria-label="Amount (to the nearest dollar)">
        </div>
        <div>
            <input type ="submit"class ="btn btn-outline-success" value ="agregar">
        </div>
    </form>

</div>
    
    

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
