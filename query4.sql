SELECT student_account.*, students_emergencycontact.phone
FROM student_account 
INNER JOIN students_emergencycontact
ON students_emergencycontact.id=student_account.id
