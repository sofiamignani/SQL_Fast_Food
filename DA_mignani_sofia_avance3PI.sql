--Selleccionar la base de datos sobre la cual vamos a trabajar
USE FastFoodDB


--¿Cuál es el total de ventas (TotalCompra) a nivel global?

SELECT SUM(total_compra) AS total_ventas_global
FROM Ordenes;

--¿Cuál es el precio promedio de los productos dentro de cada categoría?

SELECT id_categoria,
	   CONVERT( DECIMAL (10,2),
	   AVG(precio) )AS precio_promedio
FROM Productos
GROUP BY id_categoria;

--¿Cuál es el valor de la orden mínima y máxima por cada sucursal?

SELECT id_sucursal,
       MIN(total_compra) AS orden_minima,
	   MAX(total_compra) AS orden_maxima
FROM Ordenes
GROUP BY id_sucursal;

--¿Cuál es el mayor número de kilómetros recorridos para una entrega?

SELECT MAX(kilometros_recorrer) AS mayor_numero_de_kilometros_recorridos
FROM Ordenes;

--¿Cuál es la cantidad promedio de productos por orden?

SELECT id_orden,
       AVG(cantidad) AS cantidad_promedio_productos
FROM Detalle_orden
GROUP BY id_orden;

--¿Cómo se distribuye la Facturación Total del Negocio de acuerdo a los métodos de pago?

SELECT id_pago,
	   SUM(total_compra) AS faturacion_total
FROM Ordenes
GROUP BY id_pago;

--¿Cual Sucursal tiene el ingreso promedio más alto?

SELECT TOP(1) id_sucursal,
       CONVERT( DECIMAL (10,2), 
	   AVG(total_compra) )AS ingreso_promedio
FROM Ordenes
GROUP BY id_sucursal
ORDER BY ingreso_promedio DESC;


--¿Cuáles son las sucursales que han generado ventas totales por encima de $ 1000?

SELECT id_sucursal,
	   SUM(total_compra) AS ventas_totales
FROM Ordenes
GROUP BY id_sucursal
HAVING SUM(total_compra) > 1000
ORDER BY ventas_totales DESC;


--¿Cómo se comparan las ventas promedio antes y después del 1 de julio de 2023?

SET DATEFORMAT YMD            --Lo utilizo porque el formato regional de mi computadora es ditinto al de los datos.
SELECT (SELECT CONVERT( DECIMAL (10,2), AVG(total_compra) )AS promedio_ventas_primer_semestre
        FROM Ordenes
        WHERE fecha_orden_tomada < '2023-07-01') AS primer_semestre,
       (SELECT CONVERT( DECIMAL (10,2), AVG(total_compra) )AS promedio_ventas_segunod_semestre
        FROM Ordenes
        WHERE fecha_orden_tomada >= '2023-07-01') AS segundo_semestre


 /*¿Durante qué horario del día (mañana, tarde, noche) se registra la mayor cantidad de ventas, cuál es el ingreso promedio de estas ventas,
 y cuál ha sido el importe máximo alcanzado por una orden en dicha jornada? */


 SELECT horario_venta,
        COUNT(id_orden) AS cantidad_ventas,
        CONVERT (DECIMAL (10,2), AVG(total_compra)) AS ingreso_promedio,
        MAX(total_compra) AS importe_maximo
FROM Ordenes
GROUP BY horario_venta
ORDER BY cantidad_ventas DESC;