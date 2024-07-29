
--EXTRA CREDIT
--Insertar mas datos a las tablas.

USE FastFoodDB

SET DATEFORMAT ymd                   --Lo utilizo para darle a la tabla el mismo formato de fecha que tienen los datos  

INSERT INTO Ordenes (id_cliente, id_empleado, id_sucursal, id_mensajero, id_pago, id_origen, horario_venta, total_compra, kilometros_recorrer, fecha_despacho, fecha_entrega, fecha_orden_tomada, fecha_orden_lista) VALUES
(10,8,10,1,4,1,'Mañana', 591.9, 3.88, '2023-11-17 08:30:00', '2023-11-17 09:00:00', '2023-11-17 08:00:00', '2023-11-17 08:15:00'),
(4,6,7,10,2,2,'Noche',1018.03,5.12,'2023-06-20 19:30:00', '2023-06-20 20:00:00', '2023-06-20 19:00:00', '2023-06-20 19:15:00'),
(10,8,5,9,5,3,'Noche',459.26,4.38,'2023-05-31 20:30:00', '2023-05-31 21:00:00', '2023-05-31 20:00:00', '2023-05-31 20:15:00'),
(8,4,7,10,7,4,'Mañana',396.58,12.02,'2023-08-31 08:30:00', '2023-08-31 09:00:00', '2023-08-31 08:00:00', '2023-08-31 08:15:00'),
(5,4,1,3,3,5,'Tarde',186.38,12.54,'2023-02-23 14:30:00', '2023-02-23 15:00:00', '2023-02-23 14:00:00', '2023-02-23 14:15:00'),
(6,4,1,9,3,2,'Mañana',1393.82,2.19,'2023-03-08 09:30:00', '2023-03-08 10:00:00', '2023-03-08 09:00:00', '2023-03-08 09:15:00'),
(8,4,7,10,3,3,'Tarde',1174.43,3.66,'2023-06-12 15:30:00', '2023-06-12 16:00:00', '2023-06-12 15:00:00', '2023-06-12 15:15:00'),
(9,5,3,6,7,1,'Noche',283.7,02.02,'2023-06-25 20:30:00', '2023-06-25 21:00:00', '2023-06-25 20:00:00', '2023-06-25 20:15:00'),
(8,9,4,9,3,2,'Mañana',1811.22,6.63,'2023-11-02 09:30:00', '2023-11-02 10:00:00', '2023-11-02 09:00:00', '2023-11-02 09:15:00'),
(5,10,7,9,6,5,'Tarde',1599.98,11.37,'2023-11-12 14:30:00', '2023-11-12 15:00:00', '2023-11-12 14:00:00', '2023-11-12 14:15:00'),
(10,9,7,2,9,1,'Noche',699.26,4.76,'2023-08-16 19:30:00', '2023-08-16 20:00:00', '2023-08-16 19:00:00', '2023-08-16 19:15:00'),
(8,5,2,9,8,4,'Noche',687.11,4.55,'2023-08-07 19:30:00', '2023-08-07 20:00:00', '2023-08-07 19:00:00', '2023-08-07 19:15:00' ),
(1,5,8,10,3,1,'Tarde',755.32,10.48,'2023-05-31 14:30:00', '2023-05-31 15:00:00', '2023-05-31 14:00:00', '2023-05-31 14:15:00'),
(9,4,2,2,8,3,'Noche',620.47,5.36,'2023-02-17 20:30:00', '2023-02-17 21:00:00', '2023-02-17 20:00:00', '2023-02-17 20:15:00' ),
(1,9,1,3,6,1,'Tarde',1360.67,9.78,'2023-05-23 15:30:00', '2023-05-23 16:00:00', '2023-05-23 15:00:00', '2023-05-23 15:15:00'),
(7,10,2,10,2,5,'Noche',1971.62,3.67,'2023-11-23 19:30:00', '2023-11-23 20:00:00', '2023-11-23 19:00:00', '2023-11-23 19:15:00'),
(5,2,2,2,8,1,'Tarde',802.24,5.27,'2023-10-21 15:30:00',  '2023-10-21 16:00:00',  '2023-10-21 15:00:00',  '2023-10-21 15:15:00'),
(8,10,6,7,9,2,'Tarde',104.72,7.96,'2023-05-14 14:30:00', '2023-05-14 15:00:00', '2023-05-14 14:00:00', '2023-05-14 14:15:00' ),
(5,4,1,2,10,3,'Mañana',984.14,6.66,'2023-04-12 08:30:00', '2023-04-12 09:00:00', '2023-04-12 08:00:00', '2023-04-12 08:15:00'),
(3,5,7,3,5,4,'Noche',1461.79,1.81,'2023-02-07 19:30:00', '2023-02-07 20:00:00', '2023-02-07 19:00:00', '2023-02-07 19:15:00' );

-- Insertar datos en Detalle_Orden
INSERT INTO Detalle_orden (id_orden, id_producto, Cantidad, Precio) VALUES
(5, 9, 3, 36),
(24, 2, 3, 10),
(23, 3, 3, 16),
(8, 3, 2, 16),
(15, 1, 2, 34),
(11, 4, 5, 13),
(21, 1, 3, 13),
(2, 8, 1, 28),
(29, 1, 2, 10),
(18, 6, 5, 6),
(20, 3, 4, 12),
(19, 4, 3, 48),
(11, 2, 4, 47),
(20, 6, 4, 36),
(5, 7, 3, 8),
(22, 6, 4, 24),
(24, 10, 1, 45),
(11, 9, 3, 40),
(18, 10, 4, 32),
(28, 10, 2, 21);

-- NUEVAS CONSULTAS ESTRATEGICAS

--Análisis de la rentabilidad por producto	

SELECT  p.Nombre as producto,
		SUM(o.total_compra) as ventas
FROM Ordenes o
		INNER JOIN Detalle_orden d ON o.id_orden = d.id_orden
		INNER JOIN Productos p ON d.id_producto = p.id_producto
GROUP BY p.Nombre
ORDER BY ventas DESC;

--Tiempo promedio de preparacion 

SELECT  p.nombre AS productos,
		AVG(DATEDIFF(MINUTE,fecha_orden_tomada,fecha_orden_lista)) AS tiempo_produccion
FROM Ordenes o
		INNER JOIN Detalle_orden d ON o.id_orden = d.id_orden
		INNER JOIN Productos p ON d.id_producto =p.id_producto
GROUP BY p.nombre
ORDER BY tiempo_produccion DESC;

--Sucursales que generan mayores ingresos

SELECT	s.Nombre as sucursal,
		COUNT(id_orden) as cantidad_de_ventas,
		SUM(o.total_compra) as ingresos
FROM Ordenes o
		INNER JOIN Sucursales s ON o.id_sucursal = s.id_sucursal
GROUP BY s.Nombre
ORDER BY ingresos DESC;