-- database objects
-- procedures <-- local procedure


-- procedure to increate salary with 2 inputs, empno and amount to be added to salary
-- update database

declare 

    empno number;
    amount number;
    
    procedure raise_salary(id IN number,increase IN number) 
    is 
        curr_salary number;
        SALARY_MISSING exception;
        begin
            select salary into curr_salary from emp where empno = id;
            if curr_salary is null then
                raise SALARY_MISSING;
            else
                update emp set salary = salary+increase where empno = id;
                dbms_output.put_line('update successful for empno ' || id);
            end if;
            
        exception
            when NO_DATA_FOUND then
                dbms_output.put_line('NO VALUES FOUND');
            when SALARY_MISSING then
                dbms_output.put_line('NO SALARY FOUND');
            when OTHERS then
                dbms_output.put_line('Error encountered');                    
        end raise_salary;           
            
            
begin
    
    empno := &empno;    
    amount := &increaseamount;
    
    -- call procedure
    raise_salary(empno,amount);    
end;
/