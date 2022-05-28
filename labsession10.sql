CREATE TABLE EMPLOYEE1(EID VARCHAR2(5) PRIMARY KEY,
ENAME VARCHAR2(50),
CITY  VARCHAR2(50),
DESIGNATION VARCHAR2(50),
SALARY NUMBER(5),
PERKS NUMBER(5));



INSERT ALL
	INTO EMPLOYEE1 VALUES('E0001','Pritam','Haripal','Security Guard',1000,50)
	INTO EMPLOYEE1 VALUES('E0002','Rajdeep','Barasat','IT-Engineer',8500,650)
	INTO EMPLOYEE1 VALUES('E0003','Provao','Bally','Manager',2500,50)
	INTO EMPLOYEE1 VALUES('E0004','Jigisha','Tollygunge','Security Guard',1500,50)
	INTO EMPLOYEE1 VALUES('E0005','Ammit','Haripal','Lead Designer', 700,500)
	INTO EMPLOYEE1 VALUES('E0006','Jake Lockley','London','Driver',1500,300)
	INTO EMPLOYEE1 VALUES('E0007','Mark Spector','Cairo','Security Guard',5500,500)
	INTO EMPLOYEE1 VALUES('E0008','Steven Grant','Cairo','Accountant',6000,800)
	INTO EMPLOYEE1 VALUES('E0009','Steven Strange','Bleecker Street','Security Guard',60000,1250)
	INTO EMPLOYEE1 VALUES('E0010','Peggy Carter','Hampstead','Administrator',55000,1000)
	INTO EMPLOYEE1 VALUES('E0011','Khonsu','Cairo','Janitor',400,50)
SELECT * FROM DUAL;

DROP TABLE EMPLOYEE1;
1.

CREATE TRIGGER SS
	BEFORE INSERT 
	ON EMPLOYEE1
	FOR EACH ROW
 	WHEN (NEW.PERKS >500)
BEGIN
	:NEW.SALARY:=:NEW.SALARY-300;
END;
/

2.
CREATE TRIGGER SS1
	BEFORE UPDATE
	ON EMPLOYEE1
	FOR EACH ROW
BEGIN
	IF :NEW.SALARY<=500 THEN
		:NEW.SALARY:=10000;
	ELSE
		:NEW.SALARY:=15000;  
 	END IF;
END; 


3.


CREATE TABLE EMP_ORG(EMPID VARCHAR2(5) PRIMARY KEY,ENAME VARCHAR2(30),SALARY NUMBER(6));


CREATE TABLE EMP_BACKUP(EMPID VARCHAR2(5) PRIMARY KEY,ENAME VARCHAR2(30),SALARY NUMBER(6));


CREATE TRIGGER SS3
	AFTER INSERT ON EMP_ORG
	FOR EACH ROW
BEGIN
	INSERT INTO EMP_BACKUP 
       (EMPID, ENAME,SALARY) 
   VALUES 
      (:NEW.EMPID,:NEW.ENAME,:NEW.SALARY);
END; 
/


INSERT INTO EMP_ORG VALUES('E0001','Sandip',1000);
INSERT INTO EMP_ORG VALUES('E0002','Anushree',54000);
INSERT INTO EMP_ORG VALUES('E0003','Kaustav',7500);
INSERT INTO EMP_ORG VALUES('E0004','Rajkumar',12300);

SELECT * FROM EMP_ORG;
SELECT * FROM EMP_BACKUP;
