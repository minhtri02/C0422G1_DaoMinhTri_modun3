use student_managerment;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT 
    *
FROM
    subject sj
WHERE
    credit = (SELECT 
            MAX(Credit)
        FROM
            subject)
;


-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT 
    sj.SubName, m.Mark
FROM
    mark m
        JOIN
    subject sj ON m.SubId = sj.SubId
WHERE
    m.Mark = (SELECT 
            MAX(m.Mark)
        FROM
            mark m)
;


-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT 
    s.*, AVG(m.Mark) AS `avg_diem`
FROM
    student s
        LEFT JOIN
    mark m ON s.StudentId = m.StudentId
GROUP BY s.StudentName
ORDER BY avg_diem DESC;