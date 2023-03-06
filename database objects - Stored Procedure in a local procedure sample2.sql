-- procedure to delete a record in emp using empno

create or replace procedure fire_employee
(
    id IN number
) as
begin
    delete from emp where empno = id;
 
end;
/

-- plsql to call the sproc
declare
    eid number := &id_to_delete;
begin

    INSERT INTO "MYPDBADMIN"."EMP" (EMPNO, EMPNAME, JOB, SALARY, DEPARTMENT) VALUES ('7', 'temp', 'temp', '200', '200');
   
    -- call procedure
    FIRE_EMPLOYEE(7);
    
end;
 