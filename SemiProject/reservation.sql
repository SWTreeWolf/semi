
/* Drop Tables */

DROP TABLE Reservation CASCADE CONSTRAINTS;
DROP TABLE Person CASCADE CONSTRAINTS;
DROP TABLE Room CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE Person
(
	p_name varchar2(50) NOT NULL,
	p_num number NOT NULL,
	p_phoneNumber varchar2(50) NOT NULL,
	p_email varchar2(50) NOT NULL,
	p_contents varchar2(3000),
	PRIMARY KEY (p_name)
);


CREATE TABLE Reservation
(
	l_num number NOT NULL,
	l_date date NOT NULL,
	p_name varchar2(50) NOT NULL,
	r_num number NOT NULL,
	PRIMARY KEY (l_num)
);


CREATE TABLE Room
(
	r_num number NOT NULL,
	r_name varchar2(100) NOT NULL,
	r_pay number NOT NULL,
	r_limitedNumber number NOT NULL,
	r_contents varchar2(1000),
	PRIMARY KEY (r_num)
);



/* Create Foreign Keys */

ALTER TABLE Reservation
	ADD FOREIGN KEY (p_name)
	REFERENCES Person (p_name)
;


ALTER TABLE Reservation
	ADD FOREIGN KEY (r_num)
	REFERENCES Room (r_num)
;



