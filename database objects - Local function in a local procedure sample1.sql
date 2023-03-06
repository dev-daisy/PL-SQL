-- sample local function to add number
declare
    in1 number;
    in2 number;
    mysum number;
    
    --local function
    function addn
    (
        in1 in number,
        in2 in number
    ) return number
    is
    begin
        mysum := in1 + in2;
        return(mysum);
    end;

begin

    in1 := &input1;
    in2 := &input2;
    
    mysum := addn(in1,in2);
    
    dbms_output.put_line('mysum:' || mysum);
    
end;
/
