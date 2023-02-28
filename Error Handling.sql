-- Error handling
DECLARE
    --n emp.empname%type;
    --n char(1);
    --n number;
    
    bigValue exception;
    PRAGMA exception_init(bigValue, -01438);
    
    numConversion exception;
    PRAGMA exception_init(numConversion, -06512);
    
    A number(3);
    
BEGIN
    -- select empname into n from emp where empno = 4; --does not exist in db
    -- error : ORA-01403: no data found
    
    -- select empname into n from emp where empno in (1,2); --many records in a variable
    -- error : ORA-01422: exact fetch returns more than requested number of rows
    
    -- select empname into n from emp where empno = 1;
    -- error : ORA-06502: PL/SQL: numeric or value error: character string buffer too small
     
    -- n := 4/0; 
    -- error : ORA-01476: divisor is equal to zero
    
    -- insert into emp values (4, 'kenneth', 'Admin', '70000A');
    -- error : ORA-01722: invalid number
    
    -- insert into dept values (3, 'HR', 300000);
    -- error : ORA-01438: value larger than specified precision allowed for this column
    
    A := TO_NUMBER('45C'); 
     
EXCEPTION

/*** PRE-DEFINED ERRORS ***/

    -- ORA-01403 no data found
    when NO_DATA_FOUND then
        dbms_output.put_line('NO RECORDS FOUND FOR GIVEN EMP NUMBER!');
        
    -- ORA-01422 exact fetch returns more than requested number of rows
    when TOO_MANY_ROWS then
        dbms_output.put_line('YOU GOT TOO MANY RECORDS!');
        
    -- ORA-06502: PL/SQL: numeric or value error: character string buffer too small
    when VALUE_ERROR then
        dbms_output.put_line('VALUE ERROR');
        
    -- ORA-01476: divisor is equal to zero
    when ZERO_DIVIDE then
        dbms_output.put_line('DIVIDING BY ZERO');
                
    -- ORA-01722: invalid number
    when INVALID_NUMBER then
        dbms_output.put_line('WRONG INSERTED NUMBER VALUE');
        
    --when OTHERS then
        dbms_output.put_line('ERROR FOUND. PLEASE CONTACT ADMIN.');   

/*** PRE-DEFINED ERRORS ***/

/*** NON PRE-DEFINED ERRORS ***/

    -- ORA-01438: value larger than specified precision allowed for this column
    when bigValue then
        dbms_output.put_line('WRONG NUMBER INPUTTED'); 

    -- ORA-01438: value larger than specified precision allowed for this column
    when numConversion then
        dbms_output.put_line('WRONG NUMBER INPUTTED'); 

/*** NON PRE-DEFINED ERRORS ***/    

END;


-------------------------
/*
CREATE TABLE dept 
(
  deptno NUMBER(3, 0) primary key 
, deptname VARCHAR2(30 BYTE) 
, deptcount number
) ;
--truncate table dept;
--insert into dept values(1, 'MIS', 30000);
--insert into dept values(2, 'HR', 67000);

*/

