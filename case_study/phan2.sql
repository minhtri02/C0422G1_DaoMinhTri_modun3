use internship;

-- 1.	Cho biết mã số và tên của các đề tài do giảng viên ‘Tran son’ hướng dẫn
select p.project_id,p.project_name
from instructor i
	join instructor_student instu on i.instructor_id = instu.instructor_id
    join project p on instu.project_id = p.project_id
where i.instructor_name = 'Tran son' ;


-- 2.	Cho biết tên đề tài không có sinh viên nào thực tập
select *
from project p
	left join instructor_student ins on p.project_id = ins.project_id
where ins.project_id is null;

-- 3.	Cho biết mã số, họ tên, tên khoa của các giảng viên hướng dẫn từ 3 sinh viên trở lên.
select i.instructor_id, i.instructor_name, f.faculty_name,count(*) as so_luong
from instructor i
	join instructor_student instu on instu.instructor_id = i.instructor_id
    join faculty f on f.faculty_id = i.faculty_id
group by instu.instructor_id
having so_luong >=3;

-- 4.	Cho biết mã số, tên đề tài của đề tài có kinh phí cao nhất
select *
from project
order by expense desc
limit 1;


-- 5.	Cho biết mã số và tên các đề tài có nhiều hơn 2 sinh viên tham gia thực tập
select *, count(*) as so_luong_sinh_vien_thuc_tap
from instructor_student i 
	join project p on i.project_id = p.project_id
group by i.project_id
having so_luong_sinh_vien_thuc_tap>=2;



-- 6.	Đưa ra mã số, họ tên và điểm của các sinh viên khoa ‘DIALY và QLTN’
select *
from student s
	join instructor_student instu on instu.student_id = s.student_id
where faculty_id = 'Geo';


-- 7.	Đưa ra tên khoa, số lượng sinh viên của mỗi khoa
select f.faculty_name, count(*) as so_luong
from student s
	join faculty f on f.faculty_id = s.faculty_id
group by f.faculty_id;

-- 8.	Cho biết thông tin về các sinh viên thực tập tại quê nhà
select *
from student s
	join instructor_student instu on s.student_id = instu.student_id
    join project p on p.project_id = instu.project_id
where place_of_birth = place_of_intern;
    


-- 9.	Hãy cho biết thông tin về những sinh viên chưa có điểm thực tập
select *
from student s
	join instructor_student instu on instu.student_id = s.student_id
where grade is null;
    


-- 10.	 Đưa ra danh sách gồm mã số, họ tên các sinh viên có điểm thực tập bằng 0
select *
from student s
	join instructor_student instu on instu.student_id = s.student_id
where grade =0;