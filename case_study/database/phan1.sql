USE internship;

-- 1.	Đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các giảng viên
select i.instructor_id, i.instructor_name, j.faculty_name
from instructor i 
join faculty j on j.faculty_id = j.faculty_id;

-- 2.	Đưa ra thông tin gồm mã số, họ tên và tên khoa của các giảng viên của khoa ‘DIA LY va QLTN’
select i.instructor_id, i.instructor_name, j.faculty_name
from instructor i 
join faculty j on j.faculty_id = j.faculty_id
where j.faculty_name = 'DIA LY va QLTN';

-- 3.	Cho biết số sinh viên của khoa ‘CONG NGHE SINH HOC’
select count(*) as so_luong_sinh_vien_khoa_bio
from student s
	join faculty f 
		on s.faculty_id = f.faculty_id
where f.faculty_name = 'CONG NGHE SINH HOC'
group by f.faculty_name
;


-- 4.	Đưa ra danh sách gồm mã số, họ tên và tuổi của các sinh viên khoa ‘TOAN’
select s.student_id, s.student_name,f.faculty_name , (year(now())- s.date_of_birth) as tuoi
from student s
	join faculty f 
		on s.faculty_id = f.faculty_id
where f.faculty_name = 'TOAN';


-- 5.	Cho biết số giảng viên của khoa ‘CONG NGHE SINH HOC’
select count(*) as so_luong_giang_vien_khoa_bio
from instructor i
	join faculty f 
		on i.faculty_id = f.faculty_id
where f.faculty_name = 'CONG NGHE SINH HOC'
group by f.faculty_name
;


-- 6.	Cho biết thông tin về sinh viên không tham gia thực tập
select s.*
from student s
	left join instructor_student instu
		on s.student_id = instu.student_id
where s.student_id not in (select student_id from instructor_student);


-- 7.	Đưa ra mã khoa, tên khoa và số giảng viên của mỗi khoa
select f.faculty_id, f.faculty_name, count(f.faculty_id) as so_luong_giang_vien
from instructor i 
	join faculty f on i.faculty_id = f.faculty_id
group by f.faculty_id;


-- 8.	Cho biết số điện thoại của khoa mà sinh viên có tên ‘Le van son’ đang theo học
select phone, faculty_name
from faculty 
where faculty_id in (select faculty_id from student where student_name = 'le van son');