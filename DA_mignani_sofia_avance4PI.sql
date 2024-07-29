--Seleccionar la base de datos sobre la cual vamos a trabajar
USE FastFoodDB

--Pregunta: ¿Cómo puedo obtener una lista de todos los productos junto con sus categorías?

SELECT p.nombre AS producto,
		c.nombre AS categoria
FROM Productos p
		INNER JOIN Categoria_de_productos C ON p.id_categoria = c.id_categoria;

--Pregunta: ¿Cómo puedo saber a qué sucursal está asignado cada empleado?


SELECT e.nombre AS empleado,
		s.nombre AS sucursal_asignada
FROM Empleados e
		INNER JOIN Sucursales s ON e.id_sucursal = s.id_sucursal;


--Pregunta: ¿Existen productos que no tienen una categoría asignada?

SELECT p.nombre AS nombre_producto,
		c.nombre AS nombre_categoria
FROM Productos p
		LEFT JOIN Categoria_de_productos c ON p.id_categoria = c.id_categoria
WHERE c.nombre IS NULL ;

/*Con LEFT JOIN me aseguro que traiga todos los productos, y puedo ver que todos tienen una categoria asignada.
Si hubiera productos sin categoría asignada, veriamos NULL en la columna de nombre_categoria*/



/*Pregunta: ¿Cómo puedo obtener un detalle completo de las órdenes, incluyendo el Nombre del cliente,
Nombre del empleado que tomó la orden, y Nombre del mensajero que la entregó?*/

SELECT o.*, 
		c.nombre AS cliente, 
		e.nombre AS empleado, 
		m.nombre AS mensajero
FROM Ordenes o
		INNER JOIN Clientes c ON o.id_cliente = c.id_cliente
		INNER JOIN Empleados e ON o.id_empleado = e.id_empleado
		INNER JOIN Mensajeros m ON o.id_mensajero = m.id_mensajero;

--Pregunta: ¿Cuántos artículos correspondientes a cada Categoría de Productos se han vendido en cada sucursal?

SELECT 	c.nombre AS Categoria,
		s.nombre AS Sucursal,
		SUM(d.cantidad) AS cantidad_articulos
FROM Ordenes o
		INNER JOIN Detalle_orden d ON o.id_orden = d.id_orden
		INNER JOIN Productos p ON d.id_producto = p.id_producto
		INNER JOIN Categoria_de_productos c ON p.id_categoria = c.id_categoria
		INNER JOIN Sucursales s ON o.id_sucursal = s.id_sucursal
GROUP BY s.nombre, c.nombre
ORDER BY s.nombre, c.nombre ;

