create sequence leaveapplication_seq start with 100 increment by 1 nomaxvalue nocache;
create table leaveapplication(
ApplicationNo number(5) not null primary key,
EmployeeNo number(10) not null,
EmployeeName varchar(30) not null, 
TypeofLeave varchar(10) not null,
FromDate varchar(15) not null,
ToDate varchar(15) not null,
NoOfDays number(5) not null,
Reason varchar(50) not null
);
alter table leaveapplication modify(TypeofLeave varchar(30)  );
select * from leaveapplication;
