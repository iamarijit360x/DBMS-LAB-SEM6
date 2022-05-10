set serveroutput on;

DECLARE
	bal int;
	mb int;
BEGIN
	bal:= &bal;
	mb := &mb;
	if  (bal<mb) then
		 bal := bal-100;
		 DBMS_OUTPUT.PUT_LINE('Amount is lower than Minimum');
		DBMS_OUTPUT.PUT_LINE('100 deducted from account');
	end if;
	DBMS_OUTPUT.PUT_LINE('Current Balance::' ||bal);
END;
/



set serveroutput on;

DECLARE
	ename EMPLOYEES.ENAME%TYPE;
BEGIN
	SELECT ENAME
	INTO ename
	FROM EMPLOYEES
	WHERE EXTRACT(YEAR FROM HDATE)<2005;
END;
/

SELECT EXTRACT(YEAR FROM HDATE) FROM EMPLOYEES;