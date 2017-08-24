--drop
drop sequence seq_guestbook;

--create sequence
create sequence seq_guestbook
start with 1
increment by 1
maxvalue 9999999999;


--insert
insert into guestbook values(seq_guestbook.nextval,'둘리','1234','호이',sysdate);

insert into guestbook values(seq_guestbook.nextval,'마이콜','1234','구공탄라면',sysdate);
commit;
--getList
select no,name,content,to_char(reg_date,'yyyy-mm--dd hh:mi:ss') from guestbook order by reg_date desc;

--delete
delete from guestbook
where no= 1 and password='1234';