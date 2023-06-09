QUERIES TIENDA

-- 1 - SELECT nombre FROM tienda.producto;
-- 2 - SELECT nombre, precio FROM tienda.producto;
-- 3 - SELECT * FROM tienda.producto;
-- 4 - SELECT nombre, precio, (precio*1.07) as 'USD dollars' FROM tienda.producto;
-- 5 - SELECT nombre as 'nom de producto', precio as 'euros', (precio*1.07) as 'dòlars' FROM tienda.producto;
-- 6 - SELECT UPPER(nombre), precio FROM tienda.producto;
-- 7 - SELECT LOWER(nombre), precio FROM tienda.producto;
-- 8 - SELECT nombre, UPPER(SUBSTRING(nombre,1,2)) as 'nombre edit', precio FROM tienda.producto;
-- 9 - SELECT nombre, FORMAT(precio,2) FROM tienda.producto;
-- 10 - SELECT nombre, FORMAT(precio,0) FROM tienda.producto;
-- 11 - SELECT codigo FROM tienda.producto;
-- 12 - SELECT codigo_fabricante, COUNT(codigo_fabricante) as 'num of items'FROM tienda.producto GROUP BY codigo_fabricante HAVING COUNT(codigo_fabricante) = 1;
-- 13 - SELECT nombre FROM tienda.producto order by nombre ASC;
-- 14 - SELECT nombre FROM tienda.producto order by nombre DESC;
-- 15.1 - SELECT nombre, precio FROM tienda.producto order by nombre ASC;
-- 15.2 - SELECT nombre, precio FROM tienda.producto order by precio DESC;
-- 16 - SELECT * FROM tienda.producto limit 5;
-- 17 - SELECT * FROM tienda.producto limit 3,2;
-- 18 - SELECT nombre,precio FROM tienda.producto ORDER BY precio ASC LIMIT 1;
-- 19 - SELECT nombre,precio FROM tienda.producto ORDER BY precio DESC LIMIT 1;
-- 20 - SELECT * FROM tienda.producto WHERE codigo_fabricante = 2;
-- 21 - SELECT tienda.producto.nombre, precio, f.nombre FROM tienda.producto join fabricante f on tienda.producto.codigo_fabricante = f.codigo;
-- 22 - SELECT tienda.producto.nombre, precio, f.nombre FROM tienda.producto join fabricante f on tienda.producto.codigo_fabricante = f.codigo order by f.nombre ASC;
-- 23 - SELECT tienda.producto.codigo, tienda.producto.nombre, codigo_fabricante, f.nombre FROM tienda.producto join fabricante f on tienda.producto.codigo_fabricante = f.codigo;
-- 24 - SELECT tienda.producto.nombre, precio, f.nombre FROM tienda.producto join fabricante f on tienda.producto.codigo_fabricante = f.codigo ORDER BY precio ASC LIMIT 1;
-- 25 - SELECT tienda.producto.nombre, precio, f.nombre FROM tienda.producto join fabricante f on tienda.producto.codigo_fabricante = f.codigo ORDER BY precio DESC LIMIT 1;
-- 26 - SELECT * FROM tienda.producto p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre = 'Lenovo';
-- 27 - SELECT * FROM tienda.producto p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre = 'Crucial' and precio >200;
-- 28 - SELECT p.nombre FROM tienda.producto p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre = 'Asus' or f.nombre = 'Hewlett-Packard' or f.nombre = 'Seagate';
-- 29 - SELECT p.nombre FROM tienda.producto p join fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre IN ('Asus', 'Hewlett-Packardy','Seagate');
-- 30 - SELECT p.nombre, p.precio FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre LIKE '%e%'
-- 31 - SELECT p.nombre, p.precio FROM tienda.producto p join fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre LIKE '%w%';
-- 32.1 - SELECT p.nombre, p.precio, f.nombre FROM tienda.producto p join fabricante f on p.codigo_fabricante = f.codigo WHERE p.precio >= 180 order by p.precio DESC;
-- 32.2 - SELECT p.nombre, p.precio, f.nombre FROM tienda.producto p join fabricante f on p.codigo_fabricante = f.codigo WHERE p.precio >= 180 order by p.precio ASC;
-- 33 - SELECT f.codigo, f.nombre FROM tienda.producto p join fabricante f on p.codigo_fabricante = f.codigo;
-- 34 - SELECT p.nombre, f.nombre FROM tienda.fabricante f LEFT JOIN tienda.producto p on f.codigo = p.codigo_fabricante;
-- 35 - SELECT * FROM tienda.fabricante f WHERE NOT EXISTS(SELECT * FROM tienda.producto p WHERE f.codigo = p.codigo_fabricante); 
-- 36 - SELECT p.nombre FROM tienda.producto p JOIN tienda.fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre = 'LENOVO';
-- 37  - SELECT p.nombre,p.precio,f.nombre FROM tienda.producto p JOIN tienda.fabricante f on p.codigo_fabricante = f.codigo WHERE p.precio = (SELECT p.precio FROM tienda.producto p JOIN tienda.fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre = 'LENOVO' ORDER BY p.precio DESC LIMIT 1);
-- 38 - SELECT p.nombre FROM tienda.producto p JOIN tienda.fabricante f ON  p.codigo_fabricante = f.codigo WHERE f.nombre = 'Lenovo' ORDER BY  p.precio DESC LIMIT 1;
-- 39 - SELECT p.nombre FROM tienda.producto p JOIN tienda.fabricante f ON  p.codigo_fabricante = f.codigo WHERE f.nombre = 'Hewlett-Packard' ORDER BY  p.precio ASC LIMIT 1;
-- 40 - SELECT p.nombre,p.precio,f.nombre FROM tienda.producto p JOIN tienda.fabricante f on p.codigo_fabricante = f.codigo WHERE p.precio >=(SELECT p.precio FROM tienda.producto p JOIN tienda.fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre = 'LENOVO' ORDER BY p.precio DESC LIMIT 1);
-- 41 - SELECT p.nombre FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus' AND p.precio > (SELECT AVG(p.precio) FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus')

QUERIES DB UNIVERSIDAD

-- 1 - SELECT p.apellido1,p.apellido2,p.nombre FROM universidad.persona p WHERE p.tipo = 'alumno' ORDER BY p.apellido1 DESC, p.apellido2 DESC, p.nombre DESC
-- 2 - SELECT p.apellido1,p.apellido2,p.nombre FROM universidad.persona p WHERE p.telefono IS NULL
-- 3 - SELECT p.apellido1,p.apellido2,p.nombre FROM universidad.persona p WHERE p.fecha_nacimiento >= '1999-01-01-00-00-00' and p.fecha_nacimiento < '2000-01-01-00-00-00'
-- 4 - SELECT p.apellido1,p.apellido2,p.nombre FROM universidad.persona p WHERE p.tipo = 'profesor' and p.telefono IS NULL and p.nif LIKE '%K'
-- 5 - SELECT a.nombre FROM universidad.asignatura a WHERE a.cuatrimestre = 1 and a.curso = 3 and a.id_grado = 7
-- 6 - SELECT p.apellido1, p.apellido2, p.nombre, d.nombre FROM universidad.persona p JOIN universidad.profesor pr ON p.id = pr.id_profesor JOIN universidad.departamento d ON pr.id_departamento = d.id ORDER BY p.apellido1 DESC, p.apellido2 DESC, p.nombre DESC
-- 7 - SELECT a.nombre, c.anyo_inicio, c.anyo_fin FROM universidad.asignatura a JOIN universidad.alumno_se_matricula_asignatura asm ON a.id = asm.id_asignatura JOIN universidad.curso_escolar c ON asm.id_curso_escolar = c.id JOIN universidad.persona p ON asm.id_alumno = p.id WHERE p.nif = '26902806M'
-- 8 - SELECT d.nombre FROM universidad.departamento d JOIN universidad.profesor pr ON d.id = pr.id_departamento JOIN universidad.persona p ON pr.id_profesor = p.id JOIN universidad.asignatura a ON pr.id_profesor = a.id_profesor JOIN universidad.grado g ON a.id_grado = g.id WHERE g.nombre = 'Grado en Ingeniería Informática (Plan 2015)' 
-- 9 - SELECT p.nombre FROM universidad.persona p JOIN universidad.alumno_se_matricula_asignatura asm ON p.id = asm.id_alumno JOIN universidad.asignatura a ON asm.id_asignatura = a.id JOIN universidad.curso_escolar c ON asm.id_curso_escolar = c.id WHERE c.anyo_inicio >= 2018 and c.anyo_fin <=2019

QUERIES LEFT JOIN i RIGHT JOIN

-- 1 - SELECT p.nombre, d.nombre FROM universidad.persona p RIGHT JOIN universidad.profesor pf ON p.id = pf.id_profesor RIGHT JOIN universidad.departamento d ON pf.id_departamento = d.id
-- 2 - SELECT p.nombre FROM universidad.persona p INNER JOIN universidad.profesor pf ON p.id = pf.id_profesor RIGHT JOIN universidad.departamento d on pf.id_departamento = d.id
-- 3 - SELECT d.nombre FROM universidad.departamento d LEFT JOIN universidad.profesor pf ON d.id = pf.id_departamento WHERE d.nombre NOT IN (SELECT d.nombre FROM universidad.departamento d  INNER JOIN universidad.profesor pf ON d.id = pf.id_departamento)
-- 4 - SELECT p.nombre FROM universidad.persona p INNER JOIN universidad.profesor pf ON p.id = pf.id_profesor LEFT JOIN universidad.asignatura a ON pf.id_profesor = a.id_profesor WHERE a.id_profesor IS NULL
-- 5 - SELECT a.nombre FROM universidad.asignatura a LEFT JOIN universidad.profesor pf ON a.id_profesor = pf.id_profesor LEFT JOIN universidad.persona p ON pf.id_profesor = p.id WHERE a.id_profesor IS NULL
-- 6 - SELECT d.nombre FROM universidad.departamento d LEFT JOIN universidad.profesor pf ON d.id = pf.id_departamento WHERE pf.id_profesor NOT IN (SELECT pf.id_profesor FROM universidad.asignatura a LEFT JOIN universidad.profesor pf ON a.id_profesor = pf.id_profesor LEFT JOIN universidad.departamento d ON pf.id_departamento = d.id WHERE a.id_profesor IS NOT NULL)

QUERIES RESUM

-- 1 - SELECT p.nombre FROM universidad.persona p WHERE p.tipo = 'alumno'
-- 2 - SELECT p.nombre FROM universidad.persona p WHERE p.fecha_nacimiento >= '1999-01-01 -00-00-00' and p.fecha_nacimiento < '2000-01-01 -00-00-00'
-- 3 - SELECT d.nombre, COUNT(*) as numero FROM universidad.departamento d JOIN  universidad.profesor pf ON d.id=pf.id_departamento GROUP BY d.nombre  ORDER BY numero DESC;
-- 4 - SELECT d.nombre, COUNT(pf.id_departamento) as numero FROM universidad.departamento d LEFT JOIN  universidad.profesor pf ON d.id=pf.id_departamento GROUP BY d.nombre  ORDER BY numero DESC;
-- 5 - SELECT g.nombre, COUNT(a.id) as numero FROM universidad.grado g LEFT JOIN universidad.asignatura a ON g.id = a.id_grado GROUP BY g.nombre  ORDER BY numero DESC
-- 6 - SELECT g.nombre, COUNT(a.id) as numero FROM universidad.grado g JOIN universidad.asignatura a ON g.id = a.id_grado GROUP BY g.nombre HAVING numero >= 40 ORDER BY numero DESC 
-- 7 - 
-- 8 - 
-- 9 - 
-- 10 - SELECT * FROM universidad.persona p WHERE p.tipo = 'alumno' and p.fecha_nacimiento >= (SELECT p.fecha_nacimiento FROM universidad.persona p WHERE p.tipo = 'alumno' ORDER BY p.fecha_nacimiento DESC LIMIT 1)
-- 11 - SELECT p.nombre FROM universidad.profesor pf JOIN universidad.departamento d ON pf.id_departamento = d.id LEFT JOIN universidad.asignatura a ON pf.id_profesor = a.id_profesor INNER JOIN universidad.persona p ON pf.id_profesor = p.id WHERE pf.id_departamento IS NOT NULL AND a.id_profesor IS NULL