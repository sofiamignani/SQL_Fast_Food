--Crear la base de datos
CREATE DATABASE FastFoodDB;

-- Seleccionar la base de datos que acabamos de crear para trabajar sobre ella
USE FastFoodDB;

--Agregar tablas
--Crear tabla Categoria de productos 
CREATE TABLE Categoria_de_productos (
	id_categoria INT IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL);

--Crear tabla Productos
CREATE TABLE Productos (
	id_producto INT IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	precio DECIMAL(10,2),
	id_categoria INT);

--Crear la tabla Detalle orden
CREATE TABLE Detalle_orden(
	id_orden INT,
	id_producto INT,
	cantidad INT,
	precio DECIMAL(10,2) 
	PRIMARY KEY(id_orden, id_producto) );            -- PK Compuesta. Esta linea no es un campo.

--Crear la tabla Empleados
CREATE TABLE Empleados(
	id_empleado INT IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	rol VARCHAR(255),
	puesto VARCHAR(255) ,
	id_sucursal INT,
	departamento VARCHAR(255) );

--Crear la tabla Mensajeros
CREATE TABLE Mensajeros(
	id_mensajero INT IDENTITY (1,1) PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	es_externo BIT NOT NULL );

--Crear la tabla Sucursales
CREATE TABLE Sucursales(
	id_sucursal INT IDENTITY (1,1) PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	direccion VARCHAR(255) );

--Crear la tabla Clientes
CREATE TABLE Clientes(
	id_cliente INT IDENTITY (1,1) PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	direccion VARCHAR(255) NOT NULL);

--Crear la tabla Origenes
CREATE TABLE Origenes(
	id_origen INT IDENTITY (1,1) PRIMARY KEY,
	tipo_de_origen VARCHAR(255) NOT NULL);

--Crear la tabla Tipos de pago
CREATE TABLE Tipos_de_pago(
	id_pago INT IDENTITY (1,1) PRIMARY KEY,
	tipo_de_pago VARCHAR(255) NOT NULL);

--Crear la tabla Ordenes
CREATE TABLE Ordenes(
	id_orden INT IDENTITY (1,1) PRIMARY KEY,
	horario_venta VARCHAR(255) NOT NULL,
	total_compra DECIMAL(10,2),
	kilometros_recorrer DECIMAL(10,2),
	fecha_despacho DATETIME,
	fecha_entrega DATETIME,
	fecha_orden_tomada DATETIME,
	fecha_orden_lista DATETIME,
	id_cliente INT,
	id_empleado INT,
	id_mensajero INT,
	id_origen INT,
	id_pago INT,
	id_sucursal INT);

--Crear relaciones de acuerdo a las claves foraneas.

--Conecta tabla Productos con Categoria de productos
ALTER TABLE Productos
ADD CONSTRAINT FK_productos_id_categoria 
FOREIGN KEY(id_categoria) REFERENCES categoria_de_productos(id_categoria);

--Conecta tabla Empleados con Sucursales
ALTER TABLE Empleados
ADD CONSTRAINT FK_empleados_id_sucursal
FOREIGN KEY(id_sucursal) REFERENCES sucursales(id_sucursal);

--Conecta tabla Ordenes con Clientes
ALTER TABLE ordenes
ADD CONSTRAINT FK_ordenes_id_cliente 
FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente);

--Conecta tabla Ordenes con Empleados
ALTER TABLE ordenes
ADD CONSTRAINT FK_ordenes_id_empleado 
FOREIGN KEY(id_empleado) REFERENCES empleados(id_empleado);

--Conecta tabla Ordenes con Mensajeros
ALTER TABLE ordenes
ADD CONSTRAINT FK_ordenes_id_mensajero 
FOREIGN KEY(id_mensajero) REFERENCES mensajeros(id_mensajero);

--Conecta tabla Ordenes con Origenes
ALTER TABLE ordenes
ADD CONSTRAINT FK_ordenes_id_origen 
FOREIGN KEY(id_origen) REFERENCES origenes(id_origen);

--Conecta tabla Ordenes con Tipos de pago
ALTER TABLE ordenes
ADD CONSTRAINT FK_ordenes_id_pago 
FOREIGN KEY(id_pago) REFERENCES tipos_de_pago(id_pago);

--Conecta tabla Ordenes con Sucursales
ALTER TABLE ordenes
ADD CONSTRAINT FK_ordenes_id_sucursal 
FOREIGN KEY(id_sucursal) REFERENCES sucursales(id_sucursal);

--Conecta tabla Detalle Orden con Productos
ALTER TABLE detalle_orden
ADD CONSTRAINT FK_detalle_orden_id_producto
FOREIGN KEY(id_producto) REFERENCES productos(id_producto);

--Conecta tabla Detalle Orden con Ordenes
ALTER TABLE detalle_orden
ADD CONSTRAINT FK_detalle_orden_id_orden
FOREIGN KEY(id_orden) REFERENCES ordenes(id_orden);