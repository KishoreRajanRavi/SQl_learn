--TCL--
use learnsql
--commit--
begin tran;
insert into employee values(6,'Kumar',54000,'hr');
commit;

--rollback--
begin tran ;
delete from employee where emp_id=3;
Rollback;
select * from employee;

--savepoint in sql server save tran--
begin tran;
insert into employee values(7,'Suresh',73000,'IT');
save tran after_first;

insert into employee values(8,'Lakshmi',87000,'Finance');
Rollback tran after_first;
commit;
