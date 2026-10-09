create database elango;
use elango;
CREATE OR REPLACE TRIGGER employee_insert_trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'New employee inserted: ' || :NEW.EmployeeName
    );
END;
/
