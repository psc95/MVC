--tbl_memberT 테이블 생성
create table tbl_memberT(
 mem_id varchar(30) primary key
 ,mem_pwd varchar2(50) not null
 ,mem_name varchar2(50) not null
 ,mem_phone varchar2(30) not null
 ,mem_email  varchar2(50) not null
 ,mem_regdate timestamp
 );
 
 select * from tbl_memberT order by mem_id asc; 