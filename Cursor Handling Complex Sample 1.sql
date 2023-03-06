-- create table emptemp ( empno number, oldsalary number(8,2), newsalary number(8,2))
-- dept 10 +1000, dep 60 +500, dept 40 +300
declare

    cursor c1 is select * from emp;
    rec c1%rowtype;
    oldsal number;
    newsal number;

begin
    
    open c1;
    loop
        fetch c1 into rec;
        exit when c1%notfound;
        select salary into oldsal from emp where empno = rec.empno;
        
        if rec.department = 10 then
            update emp set salary = salary+1000 where empno = rec.empno;
            select salary into newsal from emp where empno = rec.empno; 
        end if;
        
        if rec.department = 60 then
            update emp set salary = salary+500 where empno = rec.empno;
            select salary into newsal from emp where empno = rec.empno; 
        end if;
        
        if rec.department = 40 then
            update emp set salary = salary+300 where empno = rec.empno;
            select salary into newsal from emp where empno = rec.empno; 
        end if;
        
        insert into emptemp values(rec.empno, oldsal, newsal);
        dbms_output.put_line('done');
        
    end loop;
    close c1;
end;
/