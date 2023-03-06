-- using cursor for-loop
-- automatic rec variable
-- auto open, auto close

declare

    cursor c1 is select empno, empname, job from emp; 

begin
    
    for rec in c1
    loop
        -- action
        dbms_output.put_line(rec.empno || ' ' || rec.empname || ' ' || rec.job);
    end loop;
     
end;
/