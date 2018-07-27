create table Reservation(
   l_num number NOT NULL,
   l_datein date NOT NULL,
   l_dateout date NOT NULL,
   p_num number NOT NULL,
   r_num number NOT NULL,
   l_tipNum number NOT NULL,
   r_total number,
   yes number default 0,
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

CREATE TABLE Person
(
   p_name varchar2(50) NOT NULL,
   p_num number NOT NULL,
   p_phoneNumber varchar2(50) NOT NULL,
   p_email varchar2(50) NOT NULL,
   p_contents varchar2(3000),
   l_tipNum number NOT NULL, 
   p_address varchar2(100),
   p_birth varchar2(50),
   PRIMARY KEY (p_num)
);

create table noticeboard(/*공지사항 */
   	num number constraint semiboard_num_pk primary key,
   	readcount number default 0, 
   	writer varchar2(30),
	subject varchar2(50),
	summernote varchar2(1000),
	reg_date date,
	ref number,
	re_step number,
	re_level number,
	upload varchar2(300)
);

create table review_board( /*이용후기 DB*/
	num number,
	readcount number default 0,
	writer varchar2(40),
	password number,
	email varchar2(30),
	src varchar2(100),
	title varchar2(100),
	upload varchar2(300),
	content varchar2(1000),
	link1 varchar2(100),
	link2 varchar2(100),
	reg_date date
	PRIMARY KEY (num)
);

create table review_comm( 
	col number,
	num number,
	id varchar2(50),
	reg_date date,
	password varchar2(50),
	content varchar2(1000),
	constraint review_comm_fk foreign key(num) references review_board(num)
);

create table qna(
 num number constraint qna_num_pk primary key,
 viewcount number default 0,
 writer varchar2(30) NOT NULL,
 password varchar2(30) NOT NULL,
 email varchar2(50), 
 hpage varchar2(50), 
 title varchar2(50),
 content varchar2(1000) NOT NULL,
 qdate date NOT NULL, 
 lk1 varchar2(50), 
 lk2 varchar2(50), 
 ref number, 
 re_step number, 
 re_level number, 
 upload varchar2(300)
);

create table cm(
c_num number not null, 
b_num number not null, 
writer varchar2(20), 
password varchar2(20) NOT NULL, 
rdate date NOT NULL,
content varchar2(500), 
constraint pk_comment primary key(c_num),
constraint fk_comment foreign key(b_num) references qna(num) 
);


select * from Reservation
select * from person
select * from room

select * from noticeboard

select * from review_board
select * from review_comm

select * from qna
select * from cm

/* Drop Tables */
DROP TABLE Reservation CASCADE CONSTRAINTS;
DROP TABLE Person CASCADE CONSTRAINTS;
DROP TABLE Room CASCADE CONSTRAINTS;

DROP TABLE noticeboard CASCADE CONSTRAINTS;

DROP TABLE review_board CASCADE CONSTRAINTS;
DROP TABLE review_comm CASCADE CONSTRAINTS;
 
DROP TABLE qna CASCADE CONSTRAINTS;
DROP TABLE cm CASCADE CONSTRAINTS;

/* Delete colums*/
delete from reservation;
delete from review_board;
delete from review_comm;


/* Create Sequence */
create sequence person_seq
start with 1
increment by 1
nocache
nocycle;

create sequence reserv_seq
start with 1
increment by 1
nocache
nocycle;

create sequence room_seq
start with 1
increment by 1
nocache
nocycle;

create sequence noticeboard_seq 
start with 1 
increment by 1
nocache
nocycle;

create sequence review_board_seq  /*이용후기 DB 시퀀스*/
start with 1 
increment by 1
nocache
nocycle;

create sequence review_board_comm_seq /*이용후기 댓글 시퀀스*/
start with 1
increment by 1
nocache
nocycle;

create sequence cm_seq 
start with 1
increment by 1
nocache
nocycle;

create sequence qna_seq 
start with 1
increment by 1
nocache
nocycle;

drop sequence person_seq;
drop sequence reserv_seq;
drop sequence room_seq;
drop sequence noticeboard_seq;
drop sequence preview_board_seq;
drop sequence preview_board_comm_seq;

/* Create Foreign Keys */

ALTER TABLE Reservation
   ADD FOREIGN KEY (p_num)
   REFERENCES Person (p_num)
;

ALTER TABLE Reservation
   ADD FOREIGN KEY (r_num)
   REFERENCES Room (r_num)
;

ALTER TABLE review_comm add reg_date date;
-------------------------------------------------------------------
/* insert colum */

/* reservation */
insert into Reservation values(reserv_seq.nextval,TO_DATE('2018-06-27','YYYY-MM-DD'),TO_DATE('2018-06-28','YYYY-MM-DD'),1,1,78977,320000,0);
insert into Reservation values(reserv_seq.nextval,TO_DATE('2018-06-30','YYYY-MM-DD'),TO_DATE('2018-07-02','YYYY-MM-DD'),2,1,55631,520000,1);
insert into Reservation values(reserv_seq.nextval,TO_DATE('2018-06-01','YYYY-MM-DD'),TO_DATE('2018-06-09','YYYY-MM-DD'),3,2,47534,620000,0);
insert into Reservation values(reserv_seq.nextval,TO_DATE('2018-06-05','YYYY-MM-DD'),TO_DATE('2018-06-08','YYYY-MM-DD'),4,3,78347,250000,1);

select r.*,p.p_name from reservation r, person p where r.l_tipNum=p.l_tipNum

/* room */
insert into room values(1,'시원한 바다의 Room',390000,4,'깔끔한 이미지로써 청량감이 돋보이는 객실입니다.');
insert into room values(2,'가족이 즐겨찾는 Room',250000,5,'상당히 넓어서 가족들끼리 오기에는 적합한 객실입니다.');
insert into room values(3,'그리워지는 Room',220000,2,'조용하고 고즈넉한 분위기가 있어서 마음이 편안해지는 객실입니다');
insert into room values(4,'이국적인 Room',200000,5,'밝으면서도 경쾌한 분위기의 방입니다 온 가족이 모이기엔 적합한 객실입니다');
insert into room values(5,'매력적인 Room',1400000,5,'아기자기한 분위기의 방같지만 유명인사들이 가장 많이 찾는 객실입니다.');

/* person */
insert into person values('미나',person_seq.nextval,'444','ㅇㅇ','ㅇ',78977,'ㅇㅇ','ㅇㅇ');
insert into person values('츄츄',person_seq.nextval,'444','ㅇㅇ','ㅇ',55631,'ㅇㅇ','ㅇㅇ');
insert into person values('키키',person_seq.nextval,'444','ㅇㅇ','ㅇ',47534,'ㅇㅇ','ㅇㅇ');
insert into person values('미미',person_seq.nextval,'444','ㅇㅇ','ㅇ',78347,'ㅇㅇ','ㅇㅇ');

/* notice */
insert into noticeboard
values(noticeboard_seq.nextval,0,'한상빈','제목1','내용테스트',sysdate,semiboard_seq.nextval,0,0,'sample.txt');



/*6월6일의 매출*/
select sum(round(r_total/(l_dateout-l_datein))) from res where l_datein <= TO_DATE('2018-06-06','YYYY-MM-DD') and
l_dateout >= TO_DATE('2018-06-06','YYYY-MM-DD') 

select r_total,r_num from res where l_datein >= TO_DATE('2018-06-01','YYYY-MM-DD')  
l_dateout <= TO_DATE('2018-06-30','YYYY-MM-DD') 

delete from room;
delete from reservation;
delete from person;

SELECT *
FROM room 
WHERE r_num NOT IN 
(
 	SELECT RoomID 
    FROM   r.res, ro.room
    WHERE r.r_num=ro.r_num
    and (l_datein <= 입실 AND l_dateout >= 입실) 
           OR (l_datein <퇴실 AND l_dateout >= 퇴실 )
           OR (입실 <= l_datein AND 퇴실 >= l_datein)
)
/*
l_datein -> TO_DATE('2018-06-20','YYYY-MM-DD'),l_dateout -> TO_DATE('2018-06-28','YYYY-MM-DD')
2번방을 예약할 때 
*/
SELECT *
FROM room 
WHERE r_limitednumber>=1 and r_num NOT IN 
( SELECT r_num
    FROM   res r
    WHERE
   		(l_datein <= TO_DATE('2018-06-27','YYYY-MM-DD') AND l_dateout >= TO_DATE('2018-06-27','YYYY-MM-DD'))
           OR (l_datein < TO_DATE('2018-06-28','YYYY-MM-DD') AND l_dateout >= TO_DATE('2018-06-28','YYYY-MM-DD') )
           OR (TO_DATE('2018-06-27','YYYY-MM-DD') <= l_datein AND TO_DATE('2018-06-28','YYYY-MM-DD') >= l_datein)
)





drop table person
delete from reservation

drop table person



 
 
/*선택한 날짜 & 방에 예약이 되어있는지 확인*/ 
select * from reservation where l_date between TO_DATE('2018-06-27','YYYY-MM-DD') and TO_DATE('2018-06-27','YYYY-MM-DD')
and r_num=2;
 
select * from reservation where l_date=TO_DATE('2018-07-28','YYYY-MM-DD') and r_num=1
  
 
 
 
/*선택한 날짜&방에 예약이 안되어있는 방 나타내기*/
select * from room where r_num not in
( select r_num from reservation 
where l_date between TO_DATE('2018-07-28','YYYY-MM-DD') and TO_DATE('2018-07-31','YYYY-MM-DD'))
and r_limitednumber>=1
 
SELECT * FROM room WHERE r_num NOT IN (SELECT r_num
					 FROM  reservation WHERE 
		(l_datein <= TO_DATE('2018-07-28','YYYY-MM-DD') AND l_dateout >= TO_DATE('2018-07-31','YYYY-MM-DD')) 
		 OR (l_datein < TO_DATE('2018-07-28','YYYY-MM-DD') AND l_dateout >= TO_DATE('2018-07-31','YYYY-MM-DD')) 
		 OR (l_datein >=TO_DATE('2018-07-28','YYYY-MM-DD') AND l_dateout <=TO_DATE('2018-07-31','YYYY-MM-DD'))) 
		 and r_limitednumber>=3

 
select * from reservation 
where l_date between TO_DATE('2018-06-27','YYYY-MM-DD') and TO_DATE('2018-06-30','YYYY-MM-DD')
 
select * from reservation where l_tipNum=90772
 
select * from reservation;


select * from person

select * from reservation r, person p where r.l_tipnum=p.l_tipnum and p.p_name='최미나' 

drop table room
select * from room

update qna set title='000', password='123', content='123456789', upload=null email=null, hpage=?, lk1=?, lk2=? where num=?

