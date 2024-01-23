## Data Dictionary 
Data dictionary for the entities in the school database. This covers the `dbo.Programme`, `dbo.Room`, `dbo.Location`, `dbo.School`, `dbo.Student`, `dbo.Course`, and `dbo.Registration` schemas.

### For Entity Programme
|Attribute |Description |Data type |Constraint |
|----------|------------|----------|-----------|
|Prog_number|It uniquely describes the number of each program.|INT|PRIMARY KEY |
|Prog_name|This field describes the name of the program |NVARCHAR(50)|NOT NULL |
|Prog_description|This describes the kind of each program |NVARCHAR (50)|NOT NULL|


### For Entity Room
|Attribute |Description |Data type |Constraint |
|----------|------------|----------|-----------|
|Room_type |It uniquely describes the type of room|INT|Primary key |
|Room_description|It describes the type of room used.|NVARCHAR (50)|Not Null|


### For Entity Location
|Attribute |Description |Data type |Constraint |
|----------|------------|----------|-----------|
|Room_id |It is used as a unique identifier for each room. |INT|PRIMARY KEY| 
|Building |It describes the type of building |NVARCHAR(50)|NOT NULL| 
|Room_number|It describes the number of each room.|INT|NOT NULL |
|Capacity |It describes the capacity of the building |NVARCHAR(50)|NOT NULL |
|Room_Type|It is a foreign key which builds a relationship. It describes the type of room used.|INT|FOREIGN KEY|

### For Entity School
|Attribute |Description |Data type|Constraint |
|----------|------------|---------|-----------|
|School_number|It is used to uniquely identify the number of each school.|INT|PRIMARY KEY |
|School_name|It is used to describe the name of the school.|NVARCHAR(50)|NOT NULL|
|School_phone|It is the school contact |NVARCHAR(50)|NOT NULL 
|Room_id|It's a foreign key that describes the relationship between the school and location entity.|INT|FOREIGN KEY| 


### For Entity Student
|Attribute |Description |Data type |Constraint |
|----------|------------|----------|-----------|
|Student_number|It uniquely identifies a student.|INT|PRIMARY KEY |
|Last_name|It is a student's last name |NVARCHAR(50)|NOT NULL|
|First_name|It is the student first name |NVARCHAR(50)|NOT NULL|
|Student_address|It is the student address|NVARCHAR(50)|NOT NULL|
|Student_date_of_birth|It is the student date of birth |NVARCHAR(50)|NOT NULL| 
|Prog_number|It is a foreign key from Programme. It uniquely identifies the number of each program.|INT|FOREIGN KEY |
|School_number|It is a foreign from School. It uniquely identifies the number of each school.|INT|FOREIGN KEY| 

### For Entity Course
|Attribute |Description| Data type |Constraint |
|----------|-----------|-----------|-----------|
|Course_number |It uniquely describes the number of each course| INT| PRIMARY KEY |
|Course_title |It describes the title of each course | NVARCHAR(50)| NOT NULL |
|Course_description |This field describes what the course is all about| NVARCHAR(50)| NOT NULL |
|Course_credit| This field contains the credit load for each course| INT| NOT NULL |


### For Entity Registration
|Attribute |Description |Data type|Constraint|
|----------|------------|---------|----------| 
|Student_number| It uniquely describes the number of the student. It is also a foreign key |INT|PRIMARY KEY and FOREIGN KEY |
|Course_number|It uniquely describes the number of each course. It is also a foreign key |INT|PRIMARY KEY and FOREIGN KEY| 
|Term|It describes the term or semester |NVARCHAR(50)|NOT NULL| 
|Reg_status|It describes the student registration status |NVARCHAR(50)|NOT NULL |