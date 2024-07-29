-- Seleecioanr la base de datos sobre la cual vamos a trabajar 
USE FastFoodDB

-- Insertar datos en Categorias
INSERT INTO Categoria_de_productos(Nombre) VALUES
	('Comida Rápida'),
	('Postres'),
	('Bebidas'),
	('Ensaladas'),
	('Desayunos'),
	('Cafetería'), 
	('Helados'), 
	('Comida Vegana'),
	('Carnes'), 
	('Pizzas');

-- Insertar datos en Productos
INSERT INTO Productos (Nombre, id_categoria, Precio) VALUES
	('Hamburguesa Deluxe', 1, 9.99), 
	('Cheeseburger', 1, 7.99), 
	('Pizza Margarita', 10, 11.99),
	('Pizza Pepperoni', 10, 12.99), 
	('Helado de Chocolate', 7, 2.99),
	('Helado de Vainilla', 7, 2.99),
	('Ensalada César', 4, 5.99),
	('Ensalada Griega', 4, 6.99),
	('Pastel de Zanahoria', 2, 3.99),
	('Brownie', 2, 2.99);

-- Insertar datos en Sucursales
INSERT INTO Sucursales (Nombre, Direccion) VALUES
	('Sucursal Central', '1234 Main St'),
	('Sucursal Norte', '5678 North St'),
	('Sucursal Este', '9101 East St'),
	('Sucursal Oeste', '1121 West St'),
	('Sucursal Sur', '3141 South St'),
	('Sucursal Playa', '1516 Beach St'),
	('Sucursal Montaña', '1718 Mountain St'),
	('Sucursal Valle', '1920 Valley St'),
	('Sucursal Lago', '2122 Lake St'),
	('Sucursal Bosque', '2324 Forest St');

-- Insertar datos en Empleados
INSERT INTO Empleados (Nombre, Puesto, Departamento, id_sucursal, Rol) VALUES
	('John Doe', 'Gerente', 'Administración', 1, 'Vendedor'),
	('Jane Smith', 'Subgerente', 'Ventas', 1, 'Vendedor'),
	('Bill Jones', 'Cajero', 'Ventas', 1, 'Vendedor'), 
	('Alice Johnson', 'Cocinero', 'Cocina', 1, 'Vendedor'),
	('Tom Brown', 'Barista', 'Cafetería', 1, 'Vendedor'),
	('Emma Davis', 'Repartidor', 'Logística', 1, 'Mensajero'),
	('Lucas Miller', 'Atención al Cliente', 'Servicio', 1, 'Vendedor'), 
	('Olivia García', 'Encargado de Turno', 'Administración', 1, 'Vendedor'),
	('Ethan Martinez', 'Mesero', 'Restaurante', 1, 'Vendedor'),
	('Sophia Rodriguez', 'Auxiliar de Limpieza', 'Mantenimiento', 1, 'Vendedor');

-- Insertar datos en Clientes
INSERT INTO Clientes (Nombre, Direccion) VALUES
	('Cliente Uno', '1000 A Street'), 
	('Cliente Dos', '1001 B Street'), 
	('Cliente Tres', '1002 C Street'),
	('Cliente Cuatro', '1003 D Street'), 
	('Cliente Cinco', '1004 E Street'),
	('Cliente Seis', '1005 F Street'), 
	('Cliente Siete', '1006 G Street'), 
	('Cliente Ocho', '1007 H Street'),
	('Cliente Nueve', '1008 I Street'),
	('Cliente Diez', '1009 J Street');

-- Insertar datos en OrigenesOrden
INSERT INTO Origenes (tipo_de_origen) VALUES
	('En línea'),
	('Presencial'),
	('Teléfono'), 
	('Drive Thru'), 
	('App Móvil'),
	('Redes Sociales'),
	('Correo Electrónico'),
	('Publicidad'), 
	('Recomendación'), 
	('Evento');

-- Insertar datos en TiposPago
INSERT INTO Tipos_de_pago (tipo_de_pago) VALUES
	('Efectivo'), 
	('Tarjeta de Crédito'),
	('Tarjeta de Débito'),
	('PayPal'), 
	('Transferencia Bancaria'),
	('Criptomonedas'),
	('Cheque'), 
	('Vale de Comida'),
	('Cupón de Descuento'), 
	('Pago Móvil');

-- Insertar datos en Mensajeros
INSERT INTO Mensajeros (Nombre, es_externo) VALUES
	('Mensajero Uno', 0), 
	('Mensajero Dos', 1), 
	('Mensajero Tres', 0), 
	('Mensajero Cuatro', 1), 
	('Mensajero Cinco', 0),
	('Mensajero Seis', 1), 
	('Mensajero Siete', 0), 
	('Mensajero Ocho', 1), 
	('Mensajero Nueve', 0), 
	('Mensajero Diez', 1);

-- Insertar datos en Ordenes

	SET DATEFORMAT ymd                   --Se utiliza para darle a la tabla el mismo formato de fecha que tienen los datos  

INSERT INTO Ordenes (id_cliente, id_empleado, id_sucursal, id_mensajero, id_pago, id_origen, horario_venta, total_compra, kilometros_recorrer, fecha_despacho, fecha_entrega, fecha_orden_tomada, fecha_orden_lista) VALUES
	(1, 1, 1, 1, 1, 1, 'Mañana', 1053.51, 5.5, '2023-01-10 08:30:00', '2023-01-10 09:00:00', '2023-01-10 08:00:00', '2023-01-10 08:15:00'),
	(2, 2, 2, 2, 2, 2, 'Tarde', 1075.00, 10.0, '2023-02-15 14:30:00', '2023-02-15 15:00:00', '2023-02-15 13:30:00', '2023-02-15 14:00:00'),
	(3, 3, 3, 3, 3, 3, 'Noche', 920.00, 2.0, '2023-03-20 19:30:00', '2023-03-20 20:00:00', '2023-03-20 19:00:00', '2023-03-20 19:15:00'),
	(4, 4, 4, 4, 4, 4, 'Mañana', 930.00, 0.5, '2023-04-25 09:30:00', '2023-04-25 10:00:00', '2023-04-25 09:00:00', '2023-04-25 09:15:00'),
	(5, 5, 5, 5, 5, 5, 'Tarde', 955.00, 8.0, '2023-05-30 15:30:00', '2023-05-30 16:00:00', '2023-05-30 15:00:00', '2023-05-30 15:15:00'),
	(6, 6, 6, 6, 6, 1, 'Noche', 945.00, 12.5, '2023-06-05 20:30:00', '2023-06-05 21:00:00', '2023-06-05 20:00:00', '2023-06-05 20:15:00'),
	(7, 7, 7, 7, 7, 2, 'Mañana', 1065.00, 7.5, '2023-07-10 08:30:00', '2023-07-10 09:00:00', '2023-07-10 08:00:00', '2023-07-10 08:15:00'),
	(8, 8, 8, 8, 8, 3, 'Tarde', 1085.00, 9.5, '2023-08-15 14:30:00', '2023-08-15 15:00:00', '2023-08-15 14:00:00', '2023-08-15 14:15:00'),
	(9, 9, 9, 9, 9, 4, 'Noche', 1095.00, 3.0, '2023-09-20 19:30:00', '2023-09-20 20:00:00', '2023-09-20 19:00:00', '2023-09-20 19:15:00'),
	(10, 10, 10, 10, 10, 5, 'Mañana', 900.00, 15.0, '2023-10-25 09:30:00', '2023-10-25 10:00:00', '2023-10-25 09:00:00', '2023-10-25 09:15:00');

-- Insertar datos en Detalle_Orden
INSERT INTO Detalle_orden (id_orden, id_producto, Cantidad, Precio) VALUES
	(1, 1, 3, 23.44),
	(1, 2, 5, 45.14),
	(1, 3, 4, 46.37),
	(1, 4, 4, 42.34),
	(1, 5, 1, 18.25),
	(1, 6, 4, 20.08),
	(1, 7, 2, 13.31),
	(1, 8, 2, 20.96),
	(1, 9, 4, 30.13),
	(1, 10, 3, 38.34);

--UPDATE Y DELETE

--ACTUALIZACIONES DE EJEMPLO (UPDATE)

-- Aumentar el precio de todos los productos en la categoría 1
UPDATE Productos 
SET Precio = Precio + 1 
WHERE id_Categoria = 1;


-- Cambiar el puesto de todos los empleados del departamento 'Cocina' a 'Chef'
UPDATE Empleados 
SET puesto = 'Chef' 
WHERE Departamento = 'Cocina';

-- Actualizar la dirección de una sucursal específica
UPDATE Sucursales 
SET Direccion = '1234 New Address St'
WHERE id_sucursal = 1;


--ELIMINACIONES DE EJEMPLO (DELETE)

/*1. Eliminar una orden específica. Imaginemos que quieres eliminar una orden específica, por ejemplo, la orden con OrdenID = 10. 
Esta operación eliminaría la orden junto con sus detalles asociados (deberías asegurarte de eliminar o actualizar cualquier dato relacionado 
para mantener la integridad referencial).*/

DELETE FROM Detalle_orden WHERE id_orden = 10;   --NO SE ELIMINA NADA, PORQUE NO HAY NINGUN REGISTRO CON id_orden = 10

DELETE FROM Ordenes WHERE id_orden = 10;		--Elimina una fila

DELETE FROM Productos WHERE ID_Categoria = 2;    --NO SE PUEDE ELIMINAR POR LA INTEGRIDAD RELACIONAL

DELETE FROM Empleados WHERE id_sucursal = 10;    --NO SE ELIMINA NADA, PORQUE NO HAY NINGUN REGISTRO CON id_sucursal = 10     



------------------------------------------------------CONSULTAS AVANCE 2---------------------------------------------------------------------


--¿Cuál es la cantidad total de registros únicos en la tabla de órdenes?

SELECT COUNT(id_orden) AS total_registros 
FROM Ordenes;

--¿Cuántos empleados existen en cada departamento?

SELECT departamento, 
		COUNT(id_empleado) AS total_empleados
FROM Empleados
GROUP BY departamento;

--¿Cuántos productos hay por código de categoría?

SELECT id_categoria, 
		COUNT(id_producto) AS productos_por_categoria
FROM Productos
GROUP BY id_categoria;

--¿Cuántos clientes se han importado a la tabla de clientes?

SELECT COUNT(id_cliente) AS total_clientes
FROM Clientes;


/*¿Cuales son las sucursales con un promedio de Facturación/Ingresos superior a 1000.00 y que minimizan sus costos 
en base al promedio de kilómetros recorridos de todas de sus entregas gestionadas? Para un mejor relevamiento,
ordene el listado por el Promedio Km Recorridos. */

SELECT id_sucursal,
	AVG(total_compra) AS facturacion,
	AVG(kilometros_recorrer) AS km_recorridos
FROM Ordenes
GROUP BY id_sucursal
HAVING AVG(total_compra)>1000.00
ORDER BY km_recorridos DESC;
