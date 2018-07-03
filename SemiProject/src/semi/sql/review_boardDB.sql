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
);

create table review_comm(/*이용후기 댓글 DB*/
	col number,
	num number,
	id varchar2(50),
	reg_date date,
	password varchar2(50),
	content varchar2(1000),
	constraint review_comm_fk foreign key(num) references notice_board(num)
)

ALTER table review_board add primary key(num); /*댓글때문에 기본키 설정 해주어야함*/

create sequence notice_board_seq  /*이용후기 DB 시퀀스*/
start with 1 increment by 1;

create sequence notice_board_comm_seq /*이용후기 댓글 시퀀스*/
start with 1
increment by 1
nocache
nocycle;

select * from review_board
select * from REVIEW_COMM;

alter table review_comm add reg_date date;

delete from review_comm where num=2;

delete from review_board where num=2 constraints review_comm_fk CASCADE;
