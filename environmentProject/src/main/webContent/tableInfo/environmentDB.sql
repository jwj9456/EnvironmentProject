CREATE TABLE members (
memberid varchar(50) PRIMARY KEY,
password varchar(20) not null,
email varchar(50) not null,
regdate timestamp not null
)

select * from MEMBERS;

select * from members where memberid = 'default';

insert into members values('default', '1234', 'default@email.com', systimestamp);

truncate table members;

/* -뉴스-
 * 뉴스기사 테이블
 * 번호, 
 * 제목, 
 * 글 
 */
create table news_article(
	article_no int,				
	title varchar(255) not null,
	content long
);

create sequence num_seq
increment by 1 start with 1;
