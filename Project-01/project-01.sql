USE Hospital;
GO

-- Query 01: Retrieve male patients
SELECT
    first_name,
    last_name,
    gender
FROM dbo.patients
WHERE gender = 'M';
GO


-- Query 02: Find patients without recorded allergies
SELECT
    first_name,
    last_name
FROM dbo.patients
WHERE allergies IS NULL;
GO


-- Query 03: Find patients whose first name starts with 'C'
SELECT
    first_name
FROM dbo.patients
WHERE first_name LIKE 'C%';
GO


-- Query 04: Update missing allergy information
UPDATE dbo.patients
SET allergies = 'NKA'
WHERE allergies IS NULL;
GO


-- Query 05: Find patients with a weight between 100 and 120
SELECT
    first_name,
    last_name
FROM dbo.patients
WHERE weight BETWEEN 100 AND 120;
GO


-- Query 06: Combine first name and last name
SELECT
    CONCAT(first_name, ' ', last_name) AS full_name
FROM dbo.patients;
GO


-- Query 07: Count patients born in 2010
SELECT
    COUNT(*) AS patient_count
FROM dbo.patients
WHERE birth_date >= '2010-01-01'
  AND birth_date < '2011-01-01';
GO


-- Query 08: Retrieve patients with specific patient IDs
SELECT *
FROM dbo.patients
WHERE patient_id IN (1, 45, 534, 879, 1000);
GO


-- Query 09: Find patients taller than 160 cm and heavier than 70 kg
SELECT
    first_name,
    last_name,
    birth_date
FROM dbo.patients
WHERE height > 160
  AND weight > 70;
GO