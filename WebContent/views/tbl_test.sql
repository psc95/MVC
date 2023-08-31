--tbl_test 테이블 생성
create table tbl_test(
 no number(38) primary key
 ,name varchar2(100) not null
 ,content varchar2(4000) not null
 ,regdate timestamp
 );
 
 select * from tbl_test order by no desc;
 alter table tbl_test rename column name to title;
 commit;