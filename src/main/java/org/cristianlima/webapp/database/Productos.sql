create database SGBDProductos;

use SGBDProductos;

create table Productos(
	productoId int not null auto_increment,
    nombreProducto varchar(40) not null,
    marcaProducto varchar(40),
    descripcionProducto text,
    precioProducto decimal(10,2),
    primary key PK_productoId(productoId)
);

select * from productos;