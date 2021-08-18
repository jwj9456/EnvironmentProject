CREATE TABLE members (
memberid varchar(50) PRIMARY KEY,
password varchar(20) not null,
email varchar(50) not null,
regdate timestamp not null
)

select * from MEMBERS;

select * from members where memberid = 'default';

insert into members values('default', '1234', 'default@email.com', systimestamp);