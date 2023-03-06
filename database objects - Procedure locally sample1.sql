-- database objects
-- procedures < -- local procedure

-- sample procedure
-- supply 2 numbers, return process values

declare 

    num1 number;
    num2 number;
    mysum number;
    mydiff number;
    myprod number;
    myquo number;    

    procedure process1
        (
        num1 IN number,
        num2 IN number,
        mysum OUT number,
        mydiff OUT number,
        myprod OUT number,
        myquo OUT number
        ) is 
        
        begin
        
            mysum := num1 + num2;
            mydiff := num1 - num2;
            myprod := num1 * num2;
            myquo := num1 / num2;
        
        end;
begin
    num1 := &firstNumber;
    num2 := &secondNumber;
    
    -- call procedure
    process1(num1, num2, mysum, mydiff, myprod, myquo);
    
    -- use the output from the procedure
    dbms_output.put_line('sum:' || mysum);
    dbms_output.put_line('mydiff:' || mydiff);
    dbms_output.put_line('myprod:' || myprod);
    dbms_output.put_line('myquo:' || myquo);
end;
/