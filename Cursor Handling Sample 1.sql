-- select sql statement vs cursor

-- cursor:
-- pro : way to inject code/action in every iteration
-- cons : slow
--------------------------------------------------------------------------------

-- display / get records of department 10
-- select * from emp where department = 10;

declare 
    cursor c1 is select empno, empname, salary from emp  where  department = 10;
    rec c1%rowtype; 
    
begin

    open c1;
    loop
        fetch c1 into rec;
        exit when c1%notfound;
        dbms_output.put_line('id:' || rec.empno || '  emp name:' || rec.empname || '  salary:' || rec.salary);  
    end loop;
    close c1;

end;
/