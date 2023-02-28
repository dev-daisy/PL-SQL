-- cursors
-- pointers / storage area
-- exec sql query = 1 statement
/**
ex:
    select * from emp; <- when using cursors, data is stored temporarily in RAM
*/

--IMPLICIT
-- SQL Based

/**
SQL%NOTFOUND
SQL%FOUND
SQL%ROWCOUNT
*/
declare
    n number;
begin

    --SQL%NOTFOUND
    --delete from emp where empno = 10;
    if sql%notfound then --this refer to recent sql execution
        dbms_output.put_line('record not deleted');
    else
        dbms_output.put_line('record deleted');    
    end if; 
    

    --SQL%FOUND    
    --delete from emp where empno = 3;
    if sql%found then --this refer to recent sql execution
        dbms_output.put_line('record deleted');
    else
        dbms_output.put_line('record not deleted');    
    end if; 

    --SQL%ROWCOUNT    
    --delete from emp where empno = 2;
    --select * from emp;
    update emp set job='hr' where job = 'mis';
    n := sql%rowcount;
    dbms_output.put_line('records affected : ' || n); 
    
    
end;