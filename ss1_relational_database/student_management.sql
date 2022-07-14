create database student_managerment;
create table class (
id int auto_increment,
name_class varchar(50) ,
primary key(id)
);
create table teacher(
id int auto_increment,
name_teacher varchar(50),
age date ,
country varchar(200),
primary key(id)
);
select* from teacher;
insert into teacher(name_teacher,age,country) value ("Hai","1998-01-01","Da nang"); 
insert into teacher(name_teacher,age,country) value ("Tam","1998-01-01","Hue"); 
select * from class;

insert into class(name_class) value ("tri");
insert into class(name_class) value ("tam");
insert into class(name_class) value ("tai");
insert into class(name_class) value ("nghia");