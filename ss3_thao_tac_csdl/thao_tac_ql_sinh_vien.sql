use student_managerment;

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
SELECT 
    *
FROM
    student
WHERE
    StudentName LIKE 'h%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
SELECT 
    *
FROM
    class
WHERE
    MONTH(StartDate) = 12;


-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
SELECT 
    *
FROM
    subject
WHERE
    credit >= 3 AND credit <= 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
SET sql_safe_updates = 0;
UPDATE student 
SET 
    ClassId = 2
WHERE
    StudentName = 'hung';
SET sql_safe_updates = 1;


-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. 
-- nếu trùng sắp theo tên tăng dần.
SELECT 
    s.StudentName, sj.SubName, m.Mark
FROM
    student s
        INNER JOIN
    mark m ON s.studentid = m.studentid
        INNER JOIN
    `subject` sj ON m.subid = sj.subid
ORDER BY m.Mark DESC , s.studentname;
