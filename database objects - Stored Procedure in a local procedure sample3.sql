-- procedure to delete a record in emp using empno

create or replace procedure getallemp 
(
    id in number,
    rec out emp%rowtype
)
as 
begin
    select * into rec from emp where empno=id ; 
end;
/
 
-- plsql to call the sproc
declare 
    id number := &idToSearch;
    rec emp%rowtype;
begin

    -- call procedure
    getallemp(id, rec);
    dbms_output.put_line('name:' || rec.empname || '  salary:' || rec.salary);
    
end;
 