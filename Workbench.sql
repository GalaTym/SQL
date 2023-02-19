show databases;
use students;
desc courses;

create table basic
(id int(12) not null primary key,
datay date not null,
faculty varchar(8));
desc basic
;
insert into basic values (1, '1020/10/01', "gum");
insert into basic values (2, '1020/10/02', "math");
insert into basic values (3, '2020/10/03', "bio");

select* from basic;
insert into basic values (2, '1020/10/02', "math");
insert into basic values (3, '2020/10/03', "bio");
delete from basic where faculty='gum';
update basic set datay = '2008/17/01' where datay= 1020/10/01;
select* from basic;
show tables;
select* from basic;
select* from courses;
select * from shit;
select courses.faculty, basic.faculty, basic.datay from courses join basic on courses.id = basic.id;
