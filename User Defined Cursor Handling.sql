-- cursors
-- demo user-defined cursor handling
 
--insert into emp values(1, 'john', 'hr', 1000, 10);
--insert into emp values(2, 'tom', 'mis', 2000, 10);

declare
    cursor c1 is select empno, empname, job, salary from emp where department = 10;
    rec c1%rowtype;
    
begin

    open c1;
    loop
        fetch c1 into rec;
        exit when c1%notfound;
        dbms_output.put_line('emp no:' || rec.empno);
        dbms_output.put_line('emp name:' || rec.empname);
        dbms_output.put_line('job:' || rec.job);
        dbms_output.put_line('salary:' || rec.salary);
    end loop;
    close c1;

end;
/