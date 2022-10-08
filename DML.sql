use designdatabase;

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

-- nomor 5
INSERT INTO course (id, name, duration) VALUES
(1, 'Matematika', 55),
(2, 'Sistem Basis Data', 55),
(3, 'Pemrograman Web', 55),
(4, 'Analisis Basis Data', 55);
SELECT * from course;

-- nomor 6
insert into schedule (id, course_id, date, time) values (4, 4, '2022-01-01', '2022-01-01 10:20:07');
-- (1, 1, '2022-01-01', '2022-01-01 10:20:07'),
-- (2, 2, '2022-01-01', '2022-01-01 10:20:07'),
-- (3, 3, '2022-01-01', '2022-01-01 10:20:07');

insert into students_schedule(student_id, schedule_id) values (4,4);
-- (1, 1), (2, 2), (3, 3);

-- nomor 7
update schedule 
join students_schedule ss on schedule.id = ss.schedule_id
set time = '2022-01-01', date='2022-01-01 13:30:00'
where ss.student_id = 1 ;

update schedule 
join students_schedule ss on schedule.id = ss.schedule_id
set time = '2022-01-02', date='2022-01-01 07:30:00'
where ss.student_id = 2 ;

update schedule 
join students_schedule ss on schedule.id = ss.schedule_id
set time = '2022-01-03', date='2022-01-01 09:00:00'
where ss.student_id = 3 ;
