**Problem Statement
Objective: Interchange the seat Id for even and odd position members in the Family table, except for the last odd position member.**

**SQL Table Schema
Table: Family**

Id: Int (Primary Key, Identity)
Members: varchar(50)
SQL Script
sql
Copy code
-- Create the Family table with an auto-incrementing Id and a Members column
CREATE TABLE Family (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Mewmbers VARCHAR(50)
);

-- Rename the column 'Mewmbers' to 'Members'
EXEC sp_rename 'Family.Mewmbers', 'Members', 'COLUMN';

-- Insert data into the Family table
INSERT INTO Family (Members) 
VALUES ('Husband'), ('Wife'), ('Son'), ('Daughter'), ('Brother');
Explanation
Table Creation:

The Family table is created with two columns:
Id: An integer column that auto-increments and serves as the primary key.
Mewmbers: A varchar column to store the name of the family members (note the typo in the column name).
Column Renaming:

The column Mewmbers is renamed to Members to correct the typo.
Data Insertion:

Five rows are inserted into the Family table with the following members: 'Husband', 'Wife', 'Son', 'Daughter', and 'Brother'.
Sample Data
After the script is executed, the Family table will contain the following data:

Id	Members
1	Husband
2	Wife
3	Son
4	Daughter
5	Brother
