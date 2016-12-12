CREATE MATERIALIZED VIEW hr.hr_employees_mv (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
PARALLEL 4
ENABLE QUERY REWRITE
AS SELECT "EMPLOYEES"."EMPLOYEE_ID" "EMPLOYEE_ID","EMPLOYEES"."FIRST_NAME" "FIRST_NAME","EMPLOYEES"."LAST_NAME" "LAST_NAME","EMPLOYEES"."EMAIL" "EMAIL","EMPLOYEES"."PHONE_NUMBER" "PHONE_NUMBER","EMPLOYEES"."HIRE_DATE" "HIRE_DATE","EMPLOYEES"."JOB_ID" "JOB_ID","EMPLOYEES"."SALARY" "SALARY","EMPLOYEES"."COMMISSION_PCT" "COMMISSION_PCT","EMPLOYEES"."MANAGER_ID" "MANAGER_ID","EMPLOYEES"."DEPARTMENT_ID" "DEPARTMENT_ID" FROM "EMPLOYEES" "EMPLOYEES";