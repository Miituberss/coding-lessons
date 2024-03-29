/*--TIPOS DE DATOS--
NUMBER(precision, escala)  -> Numérico (precision = Longitud total del nº, escala = Nº de decimales)
CHAR(longitud)  -> Alfanumerico de longitud fija (Si tengo 10 y almaceno 5 rellena los otros 5)
VARCHAR2(longitud_max)  -> Alfanumerico de longitud variable
DATE -> Fecha
*/

/*--CONSULTAS--*/
  SELECT {* | first_name, last_name} --Elijo los campos de la tabla que quiero ver (*) indica todos los campos
    FROM employees  --Elijo de que tabla quiero hacer la consulta

/*--INDEXACION--*/ --En algunas sentencias no necesito escribir el nombre del campo, sirve con poner su posición en la consulta
  SELECT first_name, last_name
    FROM employees
  ORDER BY 2; --EJ. Aqui ordenara por la columna last_name

/*--ORDENAR--*/
  SELECT first_name, last_name
    FROM employees
  ORDER BY campo1 [ASC(df) | DESC];

/*--ALIAS--*/
  SELECT first_name [AS(df)] Nombre, last_name [AS(df)] Apellido
    FROM employees;

/*--FILTROS--*/
  SELECT *
    FROM employees
  WHERE salary {SIMBOLOS ARITM} 1000 
  	[AND | OR] job_id {SIMBOLOS ARITM} 'texto'; --SIMBOLOS ARITM: { = | < | > | >= | <= | <> | != }

/*--ANIDAR FILTROS--*/
  SELECT *
      FROM employees
  WHERE department_id = 100
      AND (last_name LIKE '%s%'	--Al meter el OR entre parentesis, localizo la condición: Con() -> Que sea del departamento 100 y tenga s o S
          OR last_name LIKE '%S%');						                                         -- Sin() -> Que sea del departamento 100 y tenga s o Solo que tenga S

--DISTINCT
  SELECT DISTINCT job_id --Esto filtra todos los registros iguales en 1 (Sirve para saber las valores únicos de un campo)
  	FROM employees;

--LIKE / NOT LIKE //(_) = 1 caracter o espacio (%) = Cualquier cantidad de carácteres
  SELECT *
      FROM employees
  WHERE last_name LIKE '_o%';

--IS NULL / IS NOT NULL
  SELECT *
      FROM employees
  WHERE commission_pct IS NOT NULL;

--LISTADOS DE VALORES
  SELECT *
      FROM employees
  WHERE commission_pct {IN | NOT IN} (V1,V2,V3); --Filtra por varios valores nº(1,2,3) o texto('a','b','c')

--INTERVALOS
  SELECT *
      FROM employees
  WHERE salary {BETWEEN | NOT BETWEEN} 5000 AND 20000;

/*--CAMPOS CALCULADOS--*/
  SELECT first_name Nombre, last_name Apellido, salary Salario, salary*1.05 Incremento --El campo Incremento es un campo creado mediante un CALC_ARITM
      FROM employees
  WHERE department_id = 30;

  SELECT first_name ||' '|| last_name Nombre_Completo --Concatenamos Nombre y Apellido en un único campo
      FROM employees  WHERE department_id = 30;

/*--------------------------------------TABLA DUAL----------------------------------------------
  Es una tabla para comprobaciones en Oracle, solo tiene una columna vacía llamada DUMMY*/
SELECT SQRT(5) FROM DUAL;
SELECT SYSDATE FROM DUAL;
