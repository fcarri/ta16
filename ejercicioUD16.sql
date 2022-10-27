use actividades;
#EjJERCIO 1

#ej 1.1
select nombre from fabricantes;

#ej 1.2
select nombre,precio from articulos;

#ej 1.3
select nombre 
from articulos
where precio <= 200;

#ej 1.4
select nombre,precio,fabricante
from articulos
where precio between 60 and 120;

#ej 1.5
select nombre,precio * 166.386 as precio_pesetas,fabricante
from articulos;

#ej 1.6
select avg(precio)
from articulos;

#ej 1.7
select avg(articulos.precio) from fabricantes inner join articulos 
where fabricantes.codigo = 2;

#ej 1.8
select count(codigo) from articulos
where precio >= 180;

#ej 1.9
select nombre,precio
from articulos
where precio >= 180
order by precio desc,nombre asc;

#ej 1.10
select * from articulos inner join fabricantes
where articulos.fabricante = fabricantes.codigo;

#ej 1.11
select articulos.nombre, articulos.precio, fabricantes.nombre
from articulos inner join fabricantes
where articulos.fabricante = fabricantes.codigo;

#ej 1.12
select fabricantes.codigo, avg(articulos.precio) from articulos inner join fabricantes
where articulos.fabricante = fabricantes.codigo
group by fabricantes.codigo;

#ej 1.13
select fabricantes.nombre, avg(articulos.precio) from articulos inner join fabricantes
where articulos.fabricante = fabricantes.codigo
group by fabricantes.nombre;

#ej 1.14
select fabricantes.nombre, avg(articulos.precio)>=150 from articulos inner join fabricantes
where articulos.fabricante = fabricantes.codigo
group by fabricantes.nombre;

#ej 1.15
SELECT NOMBRE, PRECIO FROM articulos 
ORDER BY PRECIO ASC LIMIT 1;

#ej 1.16
select fabricantes.nombre,max(precio) from articulos inner join fabricantes
where articulos.fabricante = fabricantes.codigo
group by fabricantes.nombre;

#ej 1.17
insert into articulos values(11,'Altavoces',70,2);

#ej 1.18
replace into articulos (codigo,nombre,precio,fabricante) values (8,'Impresora laser',270,3);

#ej 1.19
update articulos set precio = precio * 0.9
where codigo = 1 or codigo =2 or codigo =3 or codigo = 4 or codigo =5 or codigo =6 or codigo =7
or codigo =8 or codigo =9 or codigo =10;

#ej 1.20
update articulos set precio = precio - 10
where precio >= 120 and
codigo = 1 or codigo =2 or codigo =3 or codigo = 4 or codigo =5 or codigo =6 or codigo =7
or codigo =8 or codigo =9 or codigo =10;

#EJERCIO 2

#ej 2.1
select apellidos from empleados;

#ej 2.2
select distinct apellidos from empleados;

#ej 2.3
select * from empleados
where apellidos = 'smith';

#ej 2.4
select * from empleados
where apellidos = 'rogers'
union all
select * from empleados
where apellidos = 'smith';

#ej 2.5
select * from empleados
where departamento = 14;

#ej 2.6
select * from empleados
where departamento = 37
union all
select * from empleados
where departamento = 77;

#ej 2.7
select * from empleados
where apellidos like 'P%';

#ej 2.8
select sum(presupuesto) as presupuesto from departamentos;

#ej 2.9
select count(departamentos.codigo) as empleados, departamento from empleados inner join departamentos
where departamentos.codigo = empleados.departamento
group by departamentos.codigo;

#ej 2.10
select * from empleados inner join departamentos
where departamentos.codigo = empleados.departamento;

#ej 2.11
select empleados.nombre, apellidos, departamentos.nombre, presupuesto 
from empleados inner join departamentos
where departamentos.codigo = empleados.departamento;

#ej 2.12
select empleados.nombre, apellidos from empleados inner join departamentos
where departamentos.codigo = empleados.departamento
and departamentos.presupuesto > 60000;

#ej 2.13
select * from departamentos
where presupuesto > (select avg(departamentos.presupuesto) from departamentos);

#ej 2.14
select departamentos.nombre from departamentos inner join empleados
where departamentos.codigo = empleados.departamento
group by departamentos.nombre
having count(departamentos.nombre)>2;

#ej  2.15
insert into departamentos values  (11,'Calidad',40000) ;
insert into empleados values (89267109,'Esther','Vázquez',11);

#ej 2.16
update departamentos set presupuesto = presupuesto * 0.9
where codigo = 11 or codigo = 14 or codigo = 37 or codigo = 59 or codigo = 77;

#ej 2.17
update departamentos set codigo = 14
where codigo = 77;

#ej 2.18
#ej 2.19
#ej 2.20

#EJERCIO 3

#ej 3.1
select * from almacenes;

#ej 3.2
select cajas.numreferencia,valor from almacenes inner join cajas
where cajas.almacen = almacenes.codigo
and valor>150;

#ej 3.3
select contenido,numreferencia from cajas;

#ej 3.4
select avg(cajas.valor) from cajas;

#ej 3.5
select avg(cajas.valor), almacenes.codigo from almacenes inner join cajas
where cajas.almacen = almacenes.codigo
group by almacenes.codigo;

#ej 3.6
select avg(cajas.valor), almacenes.codigo from almacenes inner join cajas
where cajas.almacen = almacenes.codigo
group by almacenes.codigo
having avg(cajas.valor)>150;

#ej 3.7
select numreferencia,lugar from cajas, almacenes
where cajas.almacen = almacenes.codigo;

#ej 3.8
select count(codigo) as cajas, almacenes.codigo from almacenes join cajas
where cajas.almacen = almacenes.codigo
group by codigo;

#ej 3.9
select capacidad, count(codigo) as cajas,codigo from almacenes join cajas
where cajas.almacen = almacenes.codigo
group by codigo
having cajas>capacidad;

#ej 3.10
select numreferencia from cajas, almacenes
where cajas.almacen = almacenes.codigo
and lugar = 'Bilbao';

#ej 3.11
INSERT INTO `almacenes` VALUES (6,'Barcelona',3);

#ej 3.12
INSERT INTO `cajas` VALUES ('H5RT','Papel',200,2);

#ej 3.13
update cajas set valor = valor * 0.85;

#ej 3.14

#ej 3.15
delete from cajas where valor < 100;

#ej 3.16

#ej 4.1
select nombre from peliculas;

#ej 4.3
select nombre, calificacionEdad from peliculas;

#ej 4.4
select nombre,pelicula from salas
where pelicula is null;

#ej 4.5
select * from peliculas inner join salas
where peliculas.codigo = salas.pelicula;

#ej 4.6
select * from salas inner join peliculas
where peliculas.codigo = salas.pelicula;

#ej 4.7

#ej 4.8
insert into peliculas values (10,'Uno, Dos, Tres','PG-7');

#ej 4.9
update peliculas set calificacionedad = 'NC-13'
where calificacionedad is null;

#ej 4.10












