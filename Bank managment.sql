CREATE DATABASE BANK_MANAGMENT;
USE BANK_MANAGMENT;

CREATE TABLE CUSTOMER_MASTER(CUSTOMER_NUMBER VARCHAR(20) , 
							FIRST_NAME VARCHAR(20), 
                            LAST_NAME VARCHAR(20),
                            CUSTOMER_CITY VARCHAR(20),
                            CUSTOMER_CONTACT_NO VARCHAR(20),
                            OCCUPATION VARCHAR(20),
                            CUSTOMER_DATE_OF_BIRTH DATE,
                            CONSTRAINT MASTER_PK primary key(CUSTOMER_NUMBER));

CREATE TABLE BRANCH_MASTER(BRANCH_ID VARCHAR(20),
						   BRANCH_NAME VARCHAR(30),
                           BRANCH_CITY VARCHAR(20),
                           CONSTRAINT BRANCH_PK PRIMARY KEY(BRANCH_ID));

CREATE TABLE ACCOUNT_MASTER(ACCOUNT_NUMBER VARCHAR(20),
							CUSTOMER_NUMBER VARCHAR(20),
                            BRANCH_ID VARCHAR(20),
                            OPENING_BALANCE VARCHAR(20),
                            ACCOUNT_OPENING_DATE DATE,
                            ACCOUNT_TYPE VARCHAR(20),
                            ACCOUNT_STATUS VARCHAR(20),
                            CONSTRAINT ACCOUNT_PK PRIMARY KEY(ACCOUNT_NUMBER),
                            CONSTRAINT FK_CUSNUM FOREIGN KEY(CUSTOMER_NUMBER) REFERENCES CUSTOMER_MASTER(CUSTOMER_NUMBER),
                            CONSTRAINT FK_BRAID FOREIGN KEY(BRANCH_ID) REFERENCES BRANCH_MASTER(BRANCH_ID));
                            
CREATE TABLE TRANSCATION_DETAILS(TRANSCATION_NUMBER VARCHAR(20),
								 ACCOUNT_NUMBER VARCHAR(20),
                                 DATE_OF_TRANSCATION DATE,
                                 MEDIUM_OF_TRANSCATION VARCHAR(20),
                                 TRANSCATION_TYPE VARCHAR(20),
                                 TRANSCATION_AMOUNT VARCHAR(20),
                                 CONSTRAINT TRANSC_PK PRIMARY KEY(TRANSCATION_NUMBER),
                                 CONSTRAINT FK_ACCNUM FOREIGN KEY(ACCOUNT_NUMBER) REFERENCES ACCOUNT_MASTER(ACCOUNT_NUMBER));
                                 
CREATE TABLE LOAN_DETAILS(CUSTOMER_NUMBER VARCHAR(20),
						  BRANCH_ID VARCHAR(20),
                          LOAN_AMOUNT VARCHAR(20),
                          CONSTRAINT FK_LONDET FOREIGN KEY(CUSTOMER_NUMBER) REFERENCES CUSTOMER_MASTER(CUSTOMER_NUMBER));

insert into customer_master values('C00001','RAMESH','SHARMA','DELHI','9543198345','SERVICE','1976-12-06');
insert into customer_master values('C00002','AVINASH','MINHA','DELHI','9876532109','SERVICE','1974-10-16');
insert into customer_master values('C00003','RAHUL','RASTOGI','DELHI','9765178901','STUDENT','1981-09-26');
insert into customer_master values('C00004','PARUL','GANDHI','DELHI','9876532109','HOUSEWIFE','1976-11-03');
insert into customer_master values('C00005','NAVEEN','AEDEKAR',	'MUMBAI','8976523190','SERVICE'	,'1976-09-19');
insert into customer_master values('C00006','CHITRESH','BARWE','MUMBAI','7651298321','STUDENT','1992-11-06');
insert into customer_master values('C00007','AMIT','BORKAR','MUMBAI','9875189761','STUDENT','1981-09-06');
insert into customer_master values('C00008','NISHA','DAMLE','MUMBAI','7954198761','SERVICE','1975-12-03');
insert into customer_master values('C00009','ABHISHEK','DUTTA','KOLKATA','9856198761','SERVICE'	,'1973-05-22');
insert into customer_master values('C00010','SHANKAR','NAIR','CHENNAI','8765489076','SERVICE','1976-07-12');

insert into branch_master values('B00001','ASAF ALI ROAD','DELHI');
insert into branch_master values('B00002','NEW DELHI MAIN BRANCH','DELHI');
insert into branch_master values('B00003'	,'DELHI CANTT',	'DELHI');
insert into branch_master values('B00004'	,'JASOLA',	'DELHI');
insert into branch_master values('B00005'	,'MAHIM'	,'MUMBAI');	
insert into branch_master  values('B00006'	,'VILE PARLE',	'MUMBAI');
insert into branch_master  values('B00007',	'MANDVI'	,'MUMBAI');
insert into branch_master  values('B00008'	,'JADAVPUR',	'KOLKATA');
insert into branch_master values('B00009'	,'KODAMBAKKAM',	'CHENNAI');

insert into account_master values('A00001' ,'C00001','B00001',1000,'2012-12-15','SAVING','ACTIVE');
insert into account_master  values('A00002','C00002','B00001',1000,'2012-06-12'	,'SAVING','ACTIVE');
insert into account_master  values('A00003','C00003','B00002',1000,'2012-05-17','SAVING','ACTIVE');
insert into account_master values('A00004','C00002','B00005',1000,'2013-01-27','SAVING','ACTIVE');
insert into account_master  values('A00005','C00006','B00006',1000,'2012-12-17','SAVING','ACTIVE');
insert into account_master  values('A00006'	,'C00007','B00007',1000,'2010-08-12','SAVING','SUSPENDED');
insert into account_master values('A00007','C00007','B00001',1000,'2012-10-02','SAVING','ACTIVE');
insert into account_master  values('A00008','C00001','B00003',1000,'2009-11-09','SAVING','TERMINATED');
insert into account_master values('A00009','C00003','B00007',1000,'2008-11-30','SAVING','TERMINATED');
insert into account_master  values('A00010','C00004','B00002',1000,'2013-03-01','SAVING','ACTIVE');

insert into transcation_details  values('T00001','A00001','2013-01-01','CHEQUE','DEPOSIT',2000);
insert into transcation_details  values('T00002','A00001','2013-02-01','CASH','WITHDRAWAL',1000);
insert into transcation_details  values('T00003','A00002','2013-01-01','CASH','DEPOSIT',2000);
insert into transcation_details  values('T00004','A00002','2013-02-01','CASH','DEPOSIT',3000);
insert into transcation_details  values('T00005','A00007','2013-01-11','CASH','DEPOSIT',7000);
insert into transcation_details  values('T00006','A00007','2013-01-13','CASH','DEPOSIT',9000);
insert into transcation_details  values('T00007','A00001','2013-03-13','CASH','DEPOSIT',4000);
insert into transcation_details  values('T00008','A00001','2013-03-14','CHEQUE','DEPOSIT',3000);
insert into transcation_details  values('T00009','A00001','2013-03-21','CASH','WITHDRAWAL',9000);
insert into transcation_details  values('T00010','A00001','2013-03-22','CASH','WITHDRAWAL',2000);
insert into transcation_details  values('T00011','A00002','2013-03-25','CASH','WITHDRAWAL',7000);
insert into transcation_details  values('T00012','A00007','2013-03-26','CASH','WITHDRAWAL',2000);

insert into Loan_details  values('C00001','B00001',100000);
insert into Loan_details  values('C00002','B00002',200000);
insert into Loan_details  values('C00009','B00008',400000);
insert into Loan_details  values('C00010','B00009',500000);
insert into Loan_details  values('C00001','B00003',600000);	
insert into Loan_details  values('C00002','B00001',600000);

select * from loan_details;
select * from customer_master;

SELECT CUSTOMER_MASTER.CUSTOMER_NUMBER,CUSTOMER_MASTER.FIRST_NAME,LOAN_DETAILS.LOAN_AMOUNT,BRANCH_MASTER.BRANCH_NAME
FROM ((CUSTOMER_MASTER
INNER JOIN LOAN_DETAILS ON CUSTOMER_MASTER.CUSTOMER_NUMBER=LOAN_DETAILS.CUSTOMER_NUMBER)
INNER JOIN BRANCH_MASTER ON LOAN_DETAILS.BRANCH_ID=BRANCH_MASTER.BRANCH_ID);

                            