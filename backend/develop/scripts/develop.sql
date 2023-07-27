USE `visualsqleditor`;

DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS agents;

CREATE TABLE agents (	
   agent_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
   agent_name varchar(90) NOT NULL,
   working_area varchar(90) NOT NULL,
   agent_comission decimal(10,2) NOT NULL, 
   agent_phone varchar(15) NOT NULL,
   agent_country varchar(25) NULL
);

INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('Ramasundar', 'Bangalore', 0.15, '077-25814763', 'India');
INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('Alex ', 'London', 0.13, '075-12458969', 'India');
INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('Alford', 'New York', 0.12, '044-25874365', 'India');
INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('Ravi Kumar', 'Bangalore', 0.15, '077-45625874', 'India');
INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('Santakumar', 'Chennai', 0.14, '007-22388644', 'India');
INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('Lucida', 'San Jose', 0.12, '044-52981425', 'India');
INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('Anderson', 'Brisban', 0.13, '045-21447739', 'India');
INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('Subbarao', 'Bangalore', 0.14, '077-12346674', 'India');
INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('Mukesh', 'Mumbai', 0.11, '029-12358964', 'India');
INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('McDen', 'London', 0.15, '078-22255588', 'India');
INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('Ivan', 'Torento', 0.15, '008-22544166', 'India');
INSERT INTO agents (agent_name, working_area, agent_comission, agent_phone, agent_country) VALUES ('Benjamin', 'Hampshair', 0.11, '008-22536178', 'India');

CREATE TABLE customer (	
   customer_code int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
   customer_name varchar(90) NOT NULL,
   customer_city varchar(90) NOT NULL,
   working_area varchar(90) NOT NULL,
   customer_country varchar(25) NULL,
   customer_phone varchar(15) NOT NULL,
   customer_monthly_amount varchar(15) NOT NULL,
   customer_agent_id int(11) NOT NULL,
   FOREIGN KEY (customer_agent_id) REFERENCES agents(agent_id)
);


INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Holmes', 'London', 'London', 'UK', '0774652350', '6000.00', 1);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Micheal', 'New York', 'New York', 'USA', '0774652350', '6500.00', 1);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Albert', 'New York', 'New York', 'USA', '0774652350', '6500.00', 2);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Ravindran', 'Bangalore', 'Bangalore', 'India', '0774652350', '6500.00', 2);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Cook', 'London', 'London', 'UK', '0774652350', '6500.00', 3);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Stuart', 'London', 'London', 'UK', '0774652350', '6500.00', 3);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Bolt', 'New York', 'New York', 'USA', '0774652350', '6500.00', 3);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Fleming', 'Brisban', 'Brisban', 'Australia', '0774652350', '6500.00', 4);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Jacks', 'Brisban', 'Brisban', 'Australia', '0774652350', '6500.00', 4);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Yearannaidu', 'Chennai', 'Chennai', 'India', '0774652350', '6500.00', 3);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Sasikant', 'Mumbai', 'Mumbai', 'India', '0774652350', '7500.00', 3);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Ramanathan', 'Chennai', 'Chennai', 'India', '0774652350', '7500.00', 4);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Avinash', 'Mumbai', 'Mumbai', 'India', '0774652350', '7500.00', 5);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Winston', 'Brisban', 'Brisban', 'Australia', '0774652350', '7500.00', 5);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Karl', 'London', 'London', 'UK', '0774652350', '7500.00', 5);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Shilton', 'Torento', 'Torento', 'Canada', '0774652350', '7500.00', 5);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Charles', 'Hampshair', 'Hampshair', 'UK', '0774652350', '7500.00', 5);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Srinivas', 'Bangalore', 'Bangalore', 'India', '0774652350', '7500.00', 6);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Steven', 'San Jose', 'San Jose', 'USA', '0774652350', '7500.00', 5);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Karolina', 'Torento', 'Torento', 'Canada', '0774652350', '7500.00', 7);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Martin', 'Torento', 'Torento', 'Canada', '0774652350', '7500.00', 7);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Ramesh', 'Mumbai', 'Mumbai', 'India', '0774652350', '7500.00', 8);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Rangarappa', 'Bangalore', 'Bangalore', 'India', '0774652350', '7500.00', 9);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Venkatpati', 'Bangalore', 'Bangalore', 'India', '0774652350', '7500.00', 10);
INSERT INTO customer (customer_name, customer_city, working_area, customer_country, customer_phone, customer_monthly_amount, customer_agent_id) VALUES ('Sundariya', 'Chennai', 'Chennai', 'India', '0774652350', '7500.00', 11);

/*

CREATE TABLE  "ORDERS" 
   (
    "ORD_NUM" NUMBER(6,0) NOT NULL PRIMARY KEY, 
    "ORD_AMOUNT" NUMBER(12,2) NOT NULL, 
    "ADVANCE_AMOUNT" NUMBER(12,2) NOT NULL, 
    "ORD_DATE" DATE NOT NULL, 
    "CUST_CODE" INTEGER NOT NULL REFERENCES CUSTOMER.CUST_CODE, 
    "AGENT_ID" INTEGER NOT NULL REFERENCES AGENT_ID, 
    "ORD_DESCRIPTION" VARCHAR2(60) NOT NULL
);


INSERT INTO ORDERS VALUES('200100', '1000.00', '600.00', '08/01/2008', 'C00013', 1, 'SOD');
INSERT INTO ORDERS VALUES('200110', '3000.00', '500.00', '04/15/2008', 'C00019', 2, 'SOD');
INSERT INTO ORDERS VALUES('200107', '4500.00', '900.00', '08/30/2008', 'C00007', 2, 'SOD');
INSERT INTO ORDERS VALUES('200112', '2000.00', '400.00', '05/30/2008', 'C00016', 3, 'SOD'); 
INSERT INTO ORDERS VALUES('200113', '4000.00', '600.00', '06/10/2008', 'C00022', 4, 'SOD');
INSERT INTO ORDERS VALUES('200102', '2000.00', '300.00', '05/25/2008', 'C00012', 5, 'SOD');
INSERT INTO ORDERS VALUES('200114', '3500.00', '2000.00', '08/15/2008', 'C00002', 6, 'SOD');
INSERT INTO ORDERS VALUES('200122', '2500.00', '400.00', '09/16/2008', 'C00003', 7, 'SOD');
INSERT INTO ORDERS VALUES('200118', '500.00', '100.00', '07/20/2008', 'C00023', 8, 'SOD');
INSERT INTO ORDERS VALUES('200119', '4000.00', '700.00', '09/16/2008', 'C00007', 2, 'SOD');
INSERT INTO ORDERS VALUES('200121', '1500.00', '600.00', '09/23/2008', 'C00008', 7, 'SOD');
INSERT INTO ORDERS VALUES('200130', '2500.00', '400.00', '07/30/2008', 'C00025', 9, 'SOD');
INSERT INTO ORDERS VALUES('200134', '4200.00', '1800.00', '09/25/2008', 'C00004', 10, 'SOD');
INSERT INTO ORDERS VALUES('200108', '4000.00', '600.00', '02/15/2008', 'C00008', 7, 'SOD');
INSERT INTO ORDERS VALUES('200103', '1500.00', '700.00', '05/15/2008', 'C00021', 10, 'SOD');
INSERT INTO ORDERS VALUES('200105', '2500.00', '500.00', '07/18/2008', 'C00025', 9, 'SOD');
INSERT INTO ORDERS VALUES('200109', '3500.00', '800.00', '07/30/2008', 'C00011', 2, 'SOD');
INSERT INTO ORDERS VALUES('200101', '3000.00', '1000.00', '07/15/2008', 'C00001', 6, 'SOD');
INSERT INTO ORDERS VALUES('200111', '1000.00', '300.00', '07/10/2008', 'C00020', 6, 'SOD');
INSERT INTO ORDERS VALUES('200104', '1500.00', '500.00', '03/13/2008', 'C00006', 7, 'SOD');
INSERT INTO ORDERS VALUES('200106', '2500.00', '700.00', '04/20/2008', 'C00005', 4, 'SOD');
INSERT INTO ORDERS VALUES('200125', '2000.00', '600.00', '10/10/2008', 'C00018', 10, 'SOD');
INSERT INTO ORDERS VALUES('200117', '800.00', '200.00', '10/20/2008', 'C00014', 11, 'SOD');
INSERT INTO ORDERS VALUES('200123', '500.00', '100.00', '09/16/2008', 'C00022', 4, 'SOD');
INSERT INTO ORDERS VALUES('200120', '500.00', '100.00', '07/20/2008', 'C00009', 4, 'SOD');
INSERT INTO ORDERS VALUES('200116', '500.00', '100.00', '07/13/2008', 'C00010', 12, 'SOD');
INSERT INTO ORDERS VALUES('200124', '500.00', '100.00', '06/20/2008', 'C00017', 3, 'SOD'); 
INSERT INTO ORDERS VALUES('200126', '500.00', '100.00', '06/24/2008', 'C00022', 4, 'SOD');
INSERT INTO ORDERS VALUES('200129', '2500.00', '500.00', '07/20/2008', 'C00024', 8, 'SOD');
INSERT INTO ORDERS VALUES('200127', '2500.00', '400.00', '07/20/2008', 'C00015', 1, 'SOD');
INSERT INTO ORDERS VALUES('200128', '3500.00', '1500.00', '07/20/2008', 'C00009', 4, 'SOD');
INSERT INTO ORDERS VALUES('200135', '2000.00', '800.00', '09/16/2008', 'C00007', 2, 'SOD');
INSERT INTO ORDERS VALUES('200131', '900.00', '150.00', '08/26/2008', 'C00012', 5, 'SOD');
INSERT INTO ORDERS VALUES('200133', '1200.00', '400.00', '06/29/2008', 'C00009', 4, 'SOD');

*/



