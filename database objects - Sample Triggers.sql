-- create trigger show empname oldvalues and newvalues when we update emp table
create or replace trigger name_update
    after update of empname on emp for each row

begin
    dbms_output.put_line('old name:' || :old.empname);
    -- :old <--- hidden table 
    
    dbms_output.put_line('new name:' || :new.empname);
    -- :new <--- hidden table 
end;

--------------------------------------------
update emp set empname = 'tomas' where empno=2;


-- create trigger when add value, new entry in an audit table
-- create table table_audit(empno number, operation varchar2(20));
create or replace trigger emp_audit
    after insert or update or delete on emp for each row
        
begin
    if inserting then
        insert into table_audit values(:new.empno, 'INSERT');
    elsif updating then
        insert into table_audit values(:new.empno, 'UPDATE');
    elsif deleting then
        insert into table_audit values(:old.empno, 'DELETE');
    end if;  
end;

----------------------------------
insert into emp values(7,'Daisy','MIS',30,30200);
update emp set department='70' where empno = 3;
delete from emp where empno = 4;