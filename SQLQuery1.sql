USE Academy
GO

-- 1. Вивести назви аудиторій, де читає лекції викладач “Edward Hopper”.
SELECT LectureRoom FROM Lectures
JOIN Teachers AS T ON T.Id = Lectures.TeacherId
WHERE CONCAT(T.Name, ' ', T.Surname) = 'Edward Hopper'

-- 2. Вивести прізвища асистентів, які читають лекції у групі “F505”.
GO
CREATE TABLE Assistants
(
	Id INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Name NVARCHAR(20) NOT NULL CHECK (Name <>N''),
	Surname NVARCHAR(20) NOT NULL CHECK (Surname <>N''),
	TeacherId INT NOT NULL
);
ALTER TABLE Assistants
ADD FOREIGN KEY (TeacherId) REFERENCES Teachers([Id]);
GO
INSERT INTO Assistants (Name, Surname, TeacherId) VALUES (N'Alex', N'Smith', 1);
INSERT INTO Assistants (Name, Surname, TeacherId) VALUES (N'Maria', N'Johnson', 2);
INSERT INTO Assistants (Name, Surname, TeacherId) VALUES (N'John', N'Williams', 3);
INSERT INTO Assistants (Name, Surname, TeacherId) VALUES (N'Sophia', N'Brown', 4);
INSERT INTO Assistants (Name, Surname, TeacherId) VALUES (N'James', N'Jones', 5);
INSERT INTO Assistants (Name, Surname, TeacherId) VALUES (N'Emma', N'Miller', 6);
INSERT INTO Assistants (Name, Surname, TeacherId) VALUES (N'Michael', N'Davis', 7);
INSERT INTO Assistants (Name, Surname, TeacherId) VALUES (N'Olivia', N'Garcia', 8);
INSERT INTO Assistants (Name, Surname, TeacherId) VALUES (N'David', N'Rodriguez', 2);
INSERT INTO Assistants (Name, Surname, TeacherId) VALUES (N'Ava', N'Martinez', 5);
GO
SELECT A.Surname FROM Assistants AS A
JOIN Teachers AS T ON T.Id = A.TeacherId
JOIN Lectures AS L ON L.TeacherId = T.Id
JOIN GroupsLectures AS GL ON GL.LecturesId = L.Id
JOIN Groups AS G ON G.Id = GL.GroupId
WHERE G.Name = 'Group PRG1'
GO
-- 3. Вивести дисципліни, які читає викладач “Alex Carmack” для груп 5 курсу.
SELECT S.Name AS SubjectName FROM Subjects AS S
JOIN Lectures AS L ON L.SubjectId = S.Id
JOIN Teachers AS T ON T.Id = L.TeacherId
JOIN GroupsLectures AS GL ON GL.LecturesId = L.Id
JOIN Groups AS G ON G.Id = GL.GroupId
WHERE CONCAT(T.Name, ' ', T.Surname) = 'Alex Johnson' and G.Year = 1
GO
-- 4. Вивести прізвища викладачів, які не читають лекції у понеділок.
SELECT DISTINCT T.Surname AS TeacherName FROM Teachers AS T
JOIN Lectures AS L ON L.TeacherId = T.Id
JOIN GroupsLectures AS GL ON GL.LecturesId = L.Id
JOIN Dayofweek AS DW ON DW.Id = GL.DayofweekId
WHERE DW.Id <> 1
GO
-- 5. Вивести назви аудиторій, із зазначенням їх корпусів, у яких немає лекцій у середу другого тижня на третій парі.
CREATE TABLE Schedules
(
	Id INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Class INT NOT NULL CHECK (Class BETWEEN 1 AND 8),
	DayOfWeek INT NOT NULL CHECK (DayOfWeek BETWEEN 1 AND 8),
	Week INT NOT NULL CHECK (Week BETWEEN 1 AND 52),
	LectureId INT NOT NULL,
	LectureRoomId INT NOT NULL
);
CREATE TABLE LectureRoom
(
	Id INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Building INT NOT NULL CHECK (Building BETWEEN 1 AND 8),
	Name NVARCHAR(10) NOT NULL UNIQUE CHECK (NAme <> N'')
);
ALTER TABLE Schedules
ADD FOREIGN KEY (LectureId) REFERENCES Lectures([Id]);
ALTER TABLE Schedules
ADD FOREIGN KEY (LectureRoomId) REFERENCES LectureRoom([Id]);
ALTER TABLE Lectures
DROP COLUMN LectureRoom;
GO
INSERT INTO LectureRoom (Building, Name) VALUES (1, N'Room A1');
INSERT INTO LectureRoom (Building, Name) VALUES (2, N'Room B2');
INSERT INTO LectureRoom (Building, Name) VALUES (3, N'Room C3');
INSERT INTO LectureRoom (Building, Name) VALUES (4, N'Room D4');
INSERT INTO LectureRoom (Building, Name) VALUES (5, N'Room E5');
INSERT INTO LectureRoom (Building, Name) VALUES (6, N'Room F6');
INSERT INTO LectureRoom (Building, Name) VALUES (7, N'Room G7');
INSERT INTO LectureRoom (Building, Name) VALUES (8, N'Room H8');
INSERT INTO LectureRoom (Building, Name) VALUES (1, N'Room A2');
INSERT INTO LectureRoom (Building, Name) VALUES (2, N'Room B3');
INSERT INTO LectureRoom (Building, Name) VALUES (3, N'Room C4');
INSERT INTO LectureRoom (Building, Name) VALUES (4, N'Room D5');
INSERT INTO LectureRoom (Building, Name) VALUES (5, N'Room E6');
INSERT INTO LectureRoom (Building, Name) VALUES (6, N'Room F7');
INSERT INTO LectureRoom (Building, Name) VALUES (7, N'Room G8');
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (1, 1, 1, 1, 1);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (2, 2, 2, 2, 2);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (3, 3, 3, 3, 3);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (4, 4, 4, 4, 4);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (5, 5, 5, 5, 5);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (6, 6, 6, 6, 6);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (7, 7, 7, 7, 7);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (8, 1, 8, 8, 8);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (1, 2, 9, 1, 1);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (2, 3, 10, 2, 2);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (3, 4, 11, 3, 3);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (4, 5, 12, 4, 4);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (5, 6, 13, 5, 5);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (6, 7, 14, 6, 6);
INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES (7, 1, 15, 7, 7);
GO

SELECT LR.Name, LR.Building FROM LectureRoom AS LR
JOIN Schedules AS S ON S.LectureRoomId = LR.Id
WHERE DayOfWeek <> 3 AND Week <> 2 AND Class <> 3

-- 6. Вивести повні імена викладачів факультету “Computer Science”, які не курирують групи кафедри “Software Development”.
GO
CREATE TABLE Deans
(
	Id INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	TeacherId INT NOT NULL
);
ALTER TABLE Deans
ADD FOREIGN KEY (TeacherId) REFERENCES Teachers([Id]);
GO
INSERT INTO Deans (TeacherId) VALUES (1);
INSERT INTO Deans (TeacherId) VALUES (2);
INSERT INTO Deans (TeacherId) VALUES (3);
GO
ALTER TABLE Faculties
ADD DeanID INT;
UPDATE Faculties
SET DeanID= CASE Id
    WHEN 1 THEN 1
    WHEN 2 THEN 2
    WHEN 3 THEN 3
	WHEN 4 THEN 4
	WHEN 5 THEN 5
    ELSE 1
END;

SELECT DISTINCT CONCAT(T.Name, ' ', T.Surname) AS Teacher FROM Teachers AS T
JOIN Lectures AS L ON L.TeacherId = T.Id
JOIN GroupsLectures AS GL ON GL.LecturesId = L.Id
JOIN Groups AS G ON G.Id = GL.GroupId
JOIN Departments AS D ON D.Id = G.DepartmentId
JOIN Faculties AS F ON D.FacultyId = F.Id
WHERE F.Name = 'Faculty of Engineering' and D.Name <> 'Department of Mechanical Engineering'

-- 7. Вивести список номерів усіх корпусів, які є у таблицях факультетів, кафедр та аудиторій.
ALTER TABLE Faculties
ADD Building INT CHECK(Building BETWEEN 1 AND 6);
ALTER TABLE Departments
ADD Building INT CHECK(Building BETWEEN 1 AND 6);
UPDATE Departments
SET Building= CASE Id
    WHEN 1 THEN 1
    WHEN 2 THEN 2
    WHEN 3 THEN 3
	WHEN 4 THEN 4
	WHEN 5 THEN 5
    ELSE 1
END;

SELECT Faculties.Building FROM Faculties
UNION
SELECT Departments.Building FROM Departments
UNION
SELECT LectureRoom.Building FROM LectureRoom

-- 8. Вивести повні імена викладачів у такому порядку: декани факультетів, завідувачі кафедр, викладачі, куратори, асистенти.
GO 
CREATE TABLE Heads
(
	Id INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	TeacherId INT NOT NULL
);
INSERT INTO Heads (TeacherId) VALUES (2)
INSERT INTO Heads (TeacherId) VALUES (6)
INSERT INTO Heads (TeacherId) VALUES (7)
INSERT INTO Heads (TeacherId) VALUES (8)
GO
SELECT CONCAT(Teachers.Name, ' ', Teachers.Surname, ' ', 'Dean') FROM Deans
JOIN Teachers ON Teachers.Id =  Deans.TeacherId
UNION ALL
SELECT CONCAT(Teachers.Name, ' ', Teachers.Surname, ' ', 'Head') FROM Heads
JOIN Teachers ON Teachers.Id =  Heads.TeacherId
UNION ALL
SELECT CONCAT(Teachers.Name, ' ', Teachers.Surname, ' ', 'Teacher') FROM Teachers
UNION ALL
SELECT CONCAT(Teachers.Name, ' ', Teachers.Surname, ' ', 'Assistants') FROM Assistants
JOIN Teachers ON Teachers.Id =  Assistants.TeacherId

-- 9. Вивести дні тижня (без повторень), в які є заняття в аудиторіях «A311» та «A104» корпусу.
SELECT DISTINCT DayOfWeek FROM Schedules AS S
JOIN LectureRoom AS LR ON S.LectureRoomId = LR.Id
WHERE LR.Name = 'Room A1' and LR.Building = 1;