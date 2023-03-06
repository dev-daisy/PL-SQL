-- create a stored function to add 2 numbers by calling the stored procedure
-- possible but not recommended to call a stored proc in a function
create or replace function calc
(
    n1 in number,
    n2 in number
) return number
is

    -- variables
    ans number;
    c number;
    d number;
    e number;
    f number;
    
begin
    --return (n1+n2);
    
    -- ans :=n1+n2;
    
    -- call a procedure
    process1(n1,n2,c,d,e,f);
    --ans := c;
    return c;
end;


-- Call a stored function in a local procedure
-- Utilize stored funtion
declare 
    a number := &n1;
    b number := &n2;
    c number;
    
begin
    c := calc(a,b);
    dbms_output.put_line('c:' || c);
end;
/