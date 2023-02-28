-- cursors
-- demo 2 user-defined cursor handling
-- top 5 emp based on salary
 
--insert into emp values(1, 'john', 'hr', 1000, 10);
--insert into emp values(2, 'tom', 'mis', 2000, 10);
--insert into emp values(3, 'daisy', 'mis', 2000, 10);
--insert into emp values(4, 'anne', 'hr', 3000, 10);
--insert into emp values(5, 'fred', 'mis', 3500, 40);
--insert into emp values(6, 'rey', 'acct', 2500, 60);

declare
    ename emp.empname%type;
    esalary emp.salary%type;
    cursor c1 is select empname, salary from emp order by salary desc;
    -- cursor has a garbage collection / automatic to close
    
begin

    open c1;
    loop
        fetch c1 into ename,esalary;
        exit when c1%rowcount > 5 or c1%notfound;
        dbms_output.put_line('emp name:' || ename || '  salary:' || esalary); 
    end loop;
    close c1;

end;
/