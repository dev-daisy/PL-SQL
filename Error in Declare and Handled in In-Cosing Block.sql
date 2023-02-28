declare
    a number(3) := '34x';
    -- this will throw an error in oracle server (the parent will handle)   
    -- exception won't work
    
begin
    a := '34a';
    dbms_output.put_line('a : ' || a);    
exception
    when others then
        dbms_output.put_line('run time error');    
end;

--------------------------------------------
-- FIX

--parent block
begin


    --sub block----
    declare
        a number(3) := '34x';
        -- this will throw an error in oracle server 
        -- will be handle by the parent block        
    begin
        a := '34a';
        dbms_output.put_line('a : ' || a);    
    exception
        when others then
            dbms_output.put_line('run time error');    
    end;
    --sub block----

    
exception
    when others then
        dbms_output.put_line('run time error');
end;
/