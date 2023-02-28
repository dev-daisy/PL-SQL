/**
1. login cdb (container db)
12c+ cdb -> (pluggable database)

sqlplus SYS/ as sysdba
show pdbs;
alter pluggable database xepdb1 close;
alter pluggable database xepdb1 open;


2. login to pdb1 and unlock users (hr), with tables
sqlplus SYSTEM/123456@143.44.164.243/xepdb1
select username from dba_users

3. user to sql developer - connect using username password

4. create our own pdb
- look for the installed file location -> C:\XE21c
- path for pdb -> C:\XE21c\oradata\XE
- login to sqlplus SYS/ as  sysdba
alter session set pdb_file_name_convert = 'C:\XE21c\oradata\XE\pdbseed\','C:\XE21c\oradata\XE\mypdb';
create pluggable database mypdb admin user mypdbadmin identified by 123456;
username: mypdbadmin
password: 123456
service: mypdb
**/


/*
implicit exception
-predefined
-non-predefined

explicit exception
-user-defined
*/

DECLARE
    myname char(30) := &name;
BEGIN
dbms_output.put_line('name: ' || myname);
END;
/