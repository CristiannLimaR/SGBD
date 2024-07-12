package org.cristianlima.webapp.servlet;
 
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.cristianlima.webapp.model.Producto;
import org.cristianlima.webapp.service.ProductoService;
 
@WebServlet("/producto-servlet")
@MultipartConfig
public class ProductoServlet extends HttpServlet {
    private ProductoService  ps;
    
    @Override
    public void init() throws ServletException{
        super.init();
        this.ps = new ProductoService();
    }
 
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Producto> productos = ps.listarProductos();
        req.setAttribute("productos", productos);
        req.getRequestDispatcher("./lista-productos/lista-productos.jsp").forward(req, resp);
    }
 
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> datosProducto = new ArrayList<>();
        String nombreProducto = req.getParameter("nombreProducto");
        String marcaProducto = req.getParameter("marcaProducto");
        String descripcionProducto = req.getParameter("descripcionProducto");
        String precioProducto = req.getParameter("precioProducto");
        datosProducto.add(nombreProducto);
        datosProducto.add(marcaProducto);
        datosProducto.add(descripcionProducto);
        datosProducto.add(precioProducto);
        String msj = "Producto enviado con exito!";
        if (nombreProducto.isEmpty()) {
            msj = "Nombre campo vacio, llenelo!";
        } else if (marcaProducto.isEmpty()) {
            msj = "Marca, campo vacio, llenelo!";
        } else if (descripcionProducto.isEmpty()) {
            msj = "Descripcion, campo vacio, llenelo!";
        } else if (precioProducto.isEmpty()) {
            msj = "Precio, campo vacio, llenelo";
        }
        req.setAttribute("mensaje", msj);
        req.setAttribute("datosProducto", datosProducto);
        getServletContext().getRequestDispatcher("/formulario-productos/formulario-productos.jsp").forward(req, resp);
 
    }
 
}