use designDatabase;
  create table students (
     id int primary key,
     full_name varchar(255),
     address varchar(255),
     major varchar(255)
 );
 create table course (
     id int primary key,
     name varchar(255),
     duration int
 );
 create table schedule (
     id int primary key ,
     course_id int,
     date date,
     time timestamp,
     foreign key (course_id) references course(id)
 );
 create table students_schedule (
     student_id int,
     schedule_id int,
     foreign key (student_id) references students(id),
     foreign key (schedule_id) references schedule(id)
 );


-- DML 
-- nomor 1
insert into students (id, full_name, address, major)
values 
(1, 'Muhammad Fikri', 'Minasa Upa', 'Sistem Informasi'),
(2, 'Febi Fiantika', 'Makassar', 'Sistem Informasi'),
(3, 'Nur Aisyah', 'Burau', 'Sistem Informasi'),
(4, 'Arya Ramdani', 'Maluku', 'Ilmu Komputer');

-- nomor 2
select * from students;

-- nomor 3
update students set full_name = 'Arya Ramdani',
					address   = 'Makassar',
                    major     ='Sistem Informasi'
					where id  = 4;
					
-- nomor 4
select s.id, c.name, s.date, s.time  from students_schedule as ss
left join schedule s on ss.schedule_id = s.id
left join course c on c.id = s.course_id
left join students st on ss.student_id = st.id
where student_id = 1;

-- nomor 6
insert into schedule (id, course_id, date, time) values 
(1, 1, '2022-01-01', '2022-01-01 10:20:07'),
(2, 2, '2022-01-01', '2022-01-01 10:20:07'),
(3, 3, '2022-01-01', '2022-01-01 10:20:07'),
(4, 4, '2022-01-01', '2022-01-01 10:20:07');
insert into students_schedule(student_id, schedule_id) values 
(1, 1), (2, 2), (3, 3),(4,4);
select * from schedule;

-- nomor 7
update schedule 
set date = '2022-01-02', time='2022-01-02 12:30:00'
where id = 1 ;

update schedule 
join students_schedule ss on schedule.id = ss.schedule_id
set date = '2022-01-03', time ='2022-01-03 10:20:07'
where ss.student_id = 2 ;

update schedule 
join students_schedule ss on schedule.id = ss.schedule_id
set date = '2022-01-04', time ='2022-01-04 09:00:00'
where ss.student_id = 3 ;





