a) Display a student's full name along with his/her programme's description.
**Code:**
```sql
SELECT s.first_name, s.last_name, p.prog_description 
FROM 
School_database.dbo.student_school s 
JOIN 
School_database.dbo.Programme p ON s.Prog_number = p.Prog_number
```

b) Write a statement that gives a list of student names, with their registration status, and the courses they are enrolled in.
**Code:**
```sql
SELECT s.first_name, s.last_name, r.Reg_status, c.Course_title 
FROM 
School_database.dbo.student_school s 
JOIN 
School_database.dbo.registration_school r ON s.Student_number = r.Student_number
JOIN
School_database.dbo.course_school c ON r.Course_number = r.Course_number
```

c) Create a new table, `registration_term` for Winter 2012 semester course section using a subquery. Include `crs_no`, `school_no` and `room_id` columns only.

d) Delete rows from `registration_term` table for school of ENGINEERING. Note that the name engineering is in upper case.

e) Create a view that will display student name, programme number, and fee of each student in school number 10. Prevent change of school through the view.

f) Display all programme names(programme name and description separated by a comma and a space) with proper case, and fee with currency format.

g) Display all student names and birth dates. Display birth dates with the format '20 OCTOBER 1980'.

h) Write a DDL and DML trigger for any of the table in the above model.