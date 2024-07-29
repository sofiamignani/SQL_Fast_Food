--------------------------------------------------------------------------------------------------------------------------------------------------
                                           --ENTREGA FINAL 
-------------------------------------------------------------------------------------------------------------------------------------------------
--Seleccionar la base de datos sobre la cual vamos a trabajar.
USE FastFoodDB

/*Eficiencia de los mensajeros: �Cu�l es el tiempo promedio desde el despacho hasta la entrega de los pedidos
gestionados por todo el equipo de mensajer�a?*/

SELECT AVG( DATEDIFF (MINUTE, fecha_despacho, fecha_entrega)) AS tiempo_promedio_entrega
FROM Ordenes 
WHERE id_mensajero IS NOT NULL ;


--An�lisis de Ventas por Origen de Orden: �Qu� canal de ventas genera m�s ingresos?

SELECT TOP 1 o2.tipo_de_origen AS canal_de_ventas,
				SUM(total_compra) AS ingresos
FROM Ordenes o
		INNER JOIN Origenes o2 ON o.id_origen = o2.id_origen
GROUP BY o2.tipo_de_origen
ORDER BY ingresos DESC;

--Productividad de los Empleados: �Cu�l es el nivel de ingreso generado por Empleado?


SELECT e.nombre AS empleado,
		SUM(total_compra) AS ingresos
FROM Ordenes o
		LEFT JOIN Empleados e ON o.id_empleado = e.id_empleado
GROUP BY  e.nombre
ORDER BY SUM(total_compra) DESC;


/*An�lisis de Demanda por Horario y D�a: �C�mo var�a la demanda de productos a lo largo del d�a?
NOTA: Esta consulta no puede ser implementada sin una definici�n clara del horario (ma�ana, tarde, noche)
en la base de datos existente. Asumiremos que HorarioVenta refleja esta informaci�n correctamente.*/



 SELECT o.horario_venta,
		p.nombre AS producto,		
        SUM(d.cantidad) AS cantidad_ventas
FROM Ordenes o
		INNER JOIN Detalle_orden d ON o.id_orden = d.id_orden
		INNER JOIN Productos p ON d.id_producto = p.id_producto
GROUP BY p.nombre, o.horario_venta ;



--Comparaci�n de Ventas Mensuales: �Cu�l es la tendencia de los ingresos generados en cada periodo mensual?


SELECT 	MONTH (fecha_orden_tomada) AS periodos_mensuales,
		DATENAME(MONTH,(fecha_orden_tomada)) AS mes,
		SUM(total_compra) AS ingresos	
FROM Ordenes
GROUP BY MONTH (fecha_orden_tomada), DATENAME(MONTH,(fecha_orden_tomada))
ORDER BY periodos_mensuales ;



/*An�lisis de Fidelidad del Cliente: �Qu� porcentaje de clientes son recurrentes versus nuevos clientes cada mes? 
NOTA: La consulta se enfocar�a en la frecuencia de �rdenes por cliente para inferir la fidelidad.*/

SELECT COUNT(id_orden) AS cantidad_compras,
		id_cliente,
CASE 
	WHEN COUNT(id_orden) =1 THEN 'cliente_nuevo'
	ELSE 'cliente_recurrente'
	END AS tipo_cliente
FROM Ordenes
GROUP BY id_cliente
ORDER BY cantidad_compras ;
