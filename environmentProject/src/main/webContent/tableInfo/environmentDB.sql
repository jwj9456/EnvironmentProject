//뉴스

/* 
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

