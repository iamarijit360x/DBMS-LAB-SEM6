CREATE TABLE SALESPEOPLEX(SNUM VARCHAR2(5) PRIMARY KEY,SNAME VARCHAR2(20),CITY VARCHAR2(20),COMM NUMBER(4));
CREATE TABLE CUSTOMERX(CNUM VARCHAR2(5) PRIMARY KEY,CNAME VARCHAR2(20),CITY VARCHAR2(20),RATTING NUMBER(2),SNUM VARCHAR2(5) REFERENCES SALESPEOPLE(SNUM));
CREATE TABLE ORDERSX(ONUM VARCHAR2(5) PRIMARY KEY,AMT NUMBER(5),ODATE DATE,CNUM VARCHAR2(20) REFERENCES CUSTOMERX(CNUM),SNUM VARCHAR2(5) REFERENCES SALESPEOPLE(SNUM));

INSERT ALL
    INTO SALESPEOPLEX VALUES('S0001','Arijit','Haripal',1200)
    INTO SALESPEOPLEX VALUES('S0002','Arnab','BudgeBudge',3000)
    INTO SALESPEOPLEX VALUES('S0003','Aditi','Joka',2300)
    INTO SALESPEOPLEX VALUES('S0004','Triasa','Dumdum',1730)
    INTO SALESPEOPLEX VALUES('S0005','Madhurima','Howrah',2321)
    INTO SALESPEOPLEX VALUES('S0006','Sumedha','Behala',1030)
SELECT * FROM DUAL;

INSERT ALL
    INTO CUSTOMERX VALUES('C0001','Aviree','Dumdum',10,'S0001')
    INTO CUSTOMERX VALUES('C0002','Shounak','Behala',6,'S0003')
    INTO CUSTOMERX VALUES('C0003','Tiyasha','Behala',5,'S0002')
    INTO CUSTOMERX VALUES('C0004','Kaustav','Haripal',10,'S0004')
    INTO CUSTOMERX VALUES('C0005','Rupam','Singur',7,'S0001')
    INTO CUSTOMERX VALUES('C0006','Subham','Kolaghat',10,'S0005')
    INTO CUSTOMERX VALUES('C0007','Aniket','Garia',8,'S0004')
    INTO CUSTOMERX VALUES('C0008','Taniya','Singur',5,'S0003')
SELECT * FROM DUAL;



