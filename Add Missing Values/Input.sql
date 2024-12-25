CREATE TABLE JobSkills (
    Row_ID INT PRIMARY KEY,
    Job_Role NVARCHAR(50),
    Skills NVARCHAR(100)
);

INSERT INTO JobSkills (Row_ID, Job_Role, Skills)
VALUES
(1, 'Data Engineer', 'SQL'),
(2, NULL, 'Python'),
(3, NULL, 'AWS'),
(4, NULL, 'Snowflake'),
(5, NULL, 'Apache Spark'),
(6, 'Web Developer', 'Java'),
(7, NULL, 'HTML'),
(8, NULL, 'CSS'),
(9, 'Data Scientist', 'Python'),
(10, NULL, 'Machine Learning'),
(11, NULL, 'Deep Learning'),
(12, 'Data Scientist', 'Tableau');
