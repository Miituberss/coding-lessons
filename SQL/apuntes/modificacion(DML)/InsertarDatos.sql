/*Para realizar modificaiones debemos realizar dos pasos. 1º La modificacion y 2º la comprobación usando visualización*/
/*Para que la inserción sea correcta los valores deben estar en orden y coincidir en el tipo*/

/**** CONFIRMAR/REVOCAR LAS MODIFICACIONES ****/
  COMMIT; --Hasta que no ejecuto el commit, el resto de usuarios no verán los cambios.
  ROLLBACK;

/**** INSERT ****/
  /*Añadir registros completos*/
    INSERT INTO JOBS VALUES ('REP', 'REPRESENTANTE', '1800')
  /*Añadir valores sueltos de registros, si no se indica ningun valor se rellen el valor DF o NULL*/
    INSERT INTO JOBS (JOB_ID, JOB_TITLE) VALUES ('REP', 'REPRESENTANTE')

/**** INSERT CON SELECT****/
  /*Se pueden usar sentencias SELECT para insertar*/
  INSERT INTO emples_dept_30
    SELECT employee_id, last_name, salary
      FROM employees
    WHERE department_id = 30;

/**** INSERT MIXTO ****/
  /*Se pueden mezclar las anteriores indicando en el select como literales los valores que quiero insertar directamente y con el nombre de la columna los que quiero recoger de la consulta*/
    INSERT INTO JOBS
      SELECT 'REP', 'Repartidor', min_salary, max_salary --Los dos primeros campos se añaden mediante un INSERT normal y los dos segundos con el resultado del SELECT.
        FROM jobs
      WHERE job_id = 'SA_MAN';

/**** INSERT CON FUNCIONES ****/
INSERT INTO JOB_HISTORY VALUES (110, TO_DATE('05/05/2022', 'dd/mm/yyyy'), SYSDATE, 'SA_MAN', 90);
