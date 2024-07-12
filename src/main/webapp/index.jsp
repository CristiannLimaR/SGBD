
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./index-style.css"/>
        <!-- Favicons -->
        <link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
        <link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
        <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
        <meta name="theme-color" content="#712cf9">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">    </head>
    <body>
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
                                <a class="nav-link active" aria-current="page" href="./index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./formulario-productos/formulario-productos.jsp">Formulario</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./lista-productos/lista-productos.jsp">Lista de Productos</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        
        <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false">
            
            <div class="carousel-inner  ">
                <div class="carousel-item active">
                    <img src="./assets/image/carne.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
        <h5>Las mejores ofertas</h5>
        <p>Aqui encontraras las mejores ofertas</p>
      </div>
                </div>
                <div class="carousel-item">
                    <img src="./assets/image/tomate.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="./assets/image/Super.jpg" class="d-block w-100 " alt="...">
                    
                </div>
            </div>
            <div class="shadow-lg p-3  bg-body-tertiary rounded d-flex justify-content-center">
                <h1>Te ofrecemos Varios Productos</h1>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        

        <div class="card-group bg-secondary-subtle">
            <div class="card m-3 p-3 " style="width: 18rem">
                <img src="https://images.unsplash.com/photo-1591337676887-a217a6970a8a?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Tecnología</h5>
                    <p class="card-text">En nuestra tienda, te ofrecemos una impresionante variedad de productos tecnológicos diseñados para satisfacer todas tus necesidades, ya sea en el hogar, la oficina o para el entretenimiento personal.</p>
                </div>
            </div>
            <div class="card m-3 p-3" style="width: 18rem">
                <img src="https://images.unsplash.com/photo-1521483451569-e33803c0330c?q=80&w=1985&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Snacks</h5>
                    <p class="card-text">Nos enorgullece ofrecer una diversidad de snacks que incluye opciones saludables, indulgentes y todo lo que hay en medio. Desde crujientes papas fritas y pretzels salados hasta barras de granola nutritivas y frutas deshidratadas, nuestra selección está diseñada para complacer todos los paladares.</p>
                </div>
            </div>
            <div class="card m-3 p-3" style="width: 18rem">
                <img src="https://images.unsplash.com/photo-1542838132-92c53300491e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8U1VQRVJNRVJDQURPfGVufDB8fDB8fHww" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Frutas y Verduras</h5>
                    <p class="card-text">En nuestra tienda, nos especializamos en ofrecer una amplia variedad de frutas y verduras frescas de la mejor calidad para tu hogar. Cada producto es cuidadosamente seleccionado para garantizar su frescura y sabor, asegurando que tú y tu familia disfruten de los mejores ingredientes en cada comida.</p>
                </div>
            </div>
        </div>

        <div class="container">
            <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
                <div class="col-md-4 d-flex align-items-center">
                    <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
                        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
                    </a>
                    <span class="mb-3 mb-md-0 text-body-secondary">© 2024 Company, Inc</span>
                </div>

                <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
                    <li class="ms-3"><a class="text-body-secondary" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"></use></svg></a></li>
                    <li class="ms-3"><a class="text-body-secondary" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"></use></svg></a></li>
                    <li class="ms-3"><a class="text-body-secondary" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"></use></svg></a></li>
                </ul>
            </footer>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
