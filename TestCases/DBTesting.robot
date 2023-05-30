*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database  pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBHost}   127.0.0.1
${DBName}   mydb
${DBPass}   root
${DBPort}   3306
${DBUser}   root

*** Test Cases ***
Create person table
    ${output}=  Execute sql string    Create table person(id integer,firstname varchar(20),lastname varchar(20));
    log to console    ${output}
    should be equal as strings    ${output}     None

#Interting Data in person table
    #Single Record
#    ${output}=  Execute sql string    Insert into person values (101,"John","Canady")

    #Multiple Record
#    ${output}=  execute sql script    ./TestData/mydb_person_insertData.sql
#    log to console    ${output}
#    should be equal as strings    ${output}     None

Check David record present in Person Table
    check if exists in database    select id from mydb.person where first_name="David";

Check Jio record NOT present in Person Table
    check if not exists in database    select id from mydb.person where first_name="Jio";

Check Person Table exists in mydb Database
    table must exist    person

Verify Row Count is Zero
    row count is 0    SELECT * FROM mydb.person WHERE first_name = "David";

Verify Row Count is Equal to Some Value
    row count is equal to x    SELECT * FROM mydb.person WHERE first_name = "David";    1

Verify Row Count is Greater than to Some Value
    row count is greater than x    to x    SELECT * FROM mydb.person WHERE first_name = "David";    0

Verify Row Count is Less than to Some Value
    row count is less than x    than x    to x    SELECT * FROM mydb.person WHERE first_name = "David";    5

Update record in person table
    ${output}=  execute sql string    Update into person set first_name="Jio"   where   id=104;
    log to console    ${output}
    should be equal as strings    ${output}     None

Retrueve Records from Person Table
    @{queryResuls}=     query   Select * from mydb.person;
    log to console    many  @{queryResuls}

Delete Records from Person Table
    @{output}=     execute sql string    Delete from mydb.person;
    should be equal as strings    ${output}     None