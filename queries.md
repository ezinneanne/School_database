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

```sql
SELECT r.Course_number, s.School_number, l.Room_id
INTO registration_term
FROM School_database.dbo.registration_school r
JOIN School_database.dbo.student_school st ON r.Student_number = st.Student_number
JOIN School_database.dbo.school_school s ON st.School_number = s.School_number
JOIN School_database.dbo.course_school c ON r.Course_number = c.Course_number
JOIN School_database.dbo.location_school l ON s.Room_Id = l.Room_Id
WHERE r.Term = 'Winter 2012';
```

d) Delete rows from `registration_term` table for school of ENGINEERING. Note that the name engineering is in upper case.

```sql
DELETE FROM registration_term WHERE School_number = 2;
```

e) Create a view that will display student name, programme number, and fee of each student in school number 10. Prevent change of school through the view.

```sql
USE [School_database];
GO

CREATE VIEW dbo.StudentInfo AS (

SELECT
    s.Student_number,
    s.Last_name + ', ' + s.First_name AS Student_name,
    s.Prog_number
  FROM
    dbo.student_school s 
  JOIN
    dbo.school_school sch  ON s.School_number = sch.School_number
  WHERE
    sch.School_number = 10
);
GO
```

f) Display all programme names(programme name and description separated by a comma and a space) with proper case, and fee with currency format.

```sql
USE [School_database];
GO

Select UPPER(LEFT(Prog_name, 1)) + LOWER(SUBSTRING(Prog_name,2,LEN(Prog_name))) + ', ' + 
    UPPER(LEFT(Prog_description, 1)) + LOWER(SUBSTRING(Prog_description, 2, LEN(Prog_description))) from dbo.Programme;
```

g) Display all student names and birth dates. Display birth dates with the format '20 OCTOBER 1980'.

```sql

```

h) Write a DDL and DML trigger for any of the table in the above model.

```sql

```