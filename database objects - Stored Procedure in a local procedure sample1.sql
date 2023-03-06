
-----------------------------------------------------------------

-- stored procedure to perform math operations

create or replace procedure process1 
(
    a IN number,
    b IN number,
    s OUT number,
    d OUT number,
    p OUT number,
    q OUT number
) is
begin
    s := a + b;
    d := a - b;
    p := a * b;
    q := a / b;  
 
end;
/

-- use process1 stored procedure using local procedure
declare
    a  number;
    b  number;
    s  number;
    d  number;
    p  number;
    q  number;

begin

    a := &firstNum;
    b := &secondNum;
    
    -- call procedure
    process1(a,b,s,d,p,q);
    
    -- utilize output vlaues
    dbms_output.put_line('sum: ' || s);
    dbms_output.put_line('difference: ' || d);
    dbms_output.put_line('product: ' || p);
    dbms_output.put_line('quotient: ' || q);
    
end;
 