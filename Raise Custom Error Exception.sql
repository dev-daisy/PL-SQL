/*
drop table item;
drop table item_order;
create table item (itemno number(3) primary key, name char(30), rate number(3), qty number(5));
insert into item values(1, 'pen', 10, 1000);
insert into item values(2, 'pencil', 10, 4);
create table item_order (orderno number(3) primary key, itemno number(3), name char(30), qty number(30));
*/

-- raise custom exception (not base on oracle service code)
declare
    out_of_stock exception;
    rec item%rowtype;
    
begin
    select * into rec from item where itemno = 2;
    
    if rec.qty < 5 then
        raise out_of_stock;
    end if;
    
    dbms_output.put_line('quantity in stock : ' || rec.qty);

exception
    when out_of_stock then
        insert into item_order values(1, rec.itemno, rec.name, 100);
        dbms_output.put_line('order palced successfully');

end;
/