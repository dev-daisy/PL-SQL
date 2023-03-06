-- create a stored function to add 2 numbers
create or replace function addn
(
    n1 in number,
    n2 in number
) return number
is

    -- variables
    ans number;
    
begin
    --return (n1+n2);
    ans :=n1+n2;
    return ans;
end;


-- Call a stored function in a local procedure
-- Utilize stored funtion
declare 
    a number := &n1;
    b number := &n2;
    c number;
    
begin
    c := addn(a,b);
    dbms_output.put_line('c:' || c);
end;
/