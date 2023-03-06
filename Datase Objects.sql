-- database objects
-- procedures
-- functions
-- stored procedures
-- triggers
-------------------------------------------

-- procedures : 
-- process              
-- cannot be use inside Select statement
-- uses OUT
-- it is not required to give back a value / return a value
-- return "out" value datatype not specified in the beginning of the script
-- can call a function
-- local procedure <-- procedures within a block / script
-- stored procedures <-- available to other proc and functions
-- in creating a procedure, use AS if the procedure contains sql statement / 
-- in creating a procedure, use IS if the procedure does not contains sql statement 

-- functions : 
-- calculations
-- DML or select statement
-- uses RETURN
-- required to return a value
-- return value datatype specified in creating function
-- possible to call a procedure but depends on the process flow (insert to delete) <-- iniiwasan
-- can call a function
-- local functions <-- locally within a script
-- stored functions <-- avail to other proc or function

-- built-in functions :
-- TO_CHAR()
-- TO_NUMBER()

-- triggers:
-- action before/after/instead in executing dml/ddl
-- automatic run of a statement (insert,delete,update)
-- commonly used:
-- before insert/update
-- after insert/update
-- before insert row/update
-- before insert statement/update 
-----------------------------------------------------------------

-- client app ------- send sql via network -------> database
-- (sql statement)
-- insert into..
-- risk -> security attack
-- a hacker can modify a packet

-- best : don't put sql statement in an app (client app)
-- client app ------------------------------------> databse
-- values                                           (sql in database)
-- risk : exhaust for the database
