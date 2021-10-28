SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
INNER JOIN empleados e
ON d.Id = e.DepartamentoId;
#para abreviar el  nombre de la tablas: despues de su priemra mencion, colocar abreviatura y usar#
#psoteriorment#

#left join#
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
LEFT JOIN empleados e
ON d.Id = e.DepartamentoId;

#right join#
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
RIGHT JOIN empleados e
ON d.Id = e.DepartamentoId;

#cnsulta#
#mostrar, id departamento, nombre de departanebto y numero de empleados por departamento#
SELECT e.DepartamentoId, d.Nombre, COUNT(e.DepartamentoId) AS "empleados por area" 
FROM empleados e
INNER JOIN departamentos d
ON e.DepartamentoId = d.Id
GROUP BY DepartamentoId;

#Full join#
SELECT * FROM departamentos
FULL JOIN empleados
ON departamentos.Id = empleados.DepartamentoId;
