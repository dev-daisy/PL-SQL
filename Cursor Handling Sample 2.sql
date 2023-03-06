-- get name and salary top 3 based on salary

declare 
    cursor c1 is select empname, salary from emp order by salary desc;
    ename emp.empname%type; 
    esal emp.salary%type; 
    
begin

    open c1;
    loop
        fetch c1 into ename, esal;
        exit when c1%rowcount > 3 OR c1%notfound;
        dbms_output.put_line('emp name:' || ename || '  salary:' || esal);  
    end loop;
    close c1;

end;
/