SELECT teachers.name, students.name, assignments.name, (completed_at - started_at) as duration
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
JOIN students ON student_id = students.id
JOIN teachers ON teachers.id = teacher_id
ORDER BY duration;
