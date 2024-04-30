### CONSTRAINTS IN SQL

- SQL Constraints are the set of rules and restrictions applied on the database inorder to maintain the data integrity and accuracy, <br>reliability and consistency of the data.
- There are two levels of SQL Constraints:<br>
1. Column Level Constraints
2. Table Level Constraints
#### Column Level Constraints:<br>
- Column level constraints were applied only to the individual column and cannot be applied to the entire table.
- Constraints specified within the column definition, during creation of the table.
- Column Level Constraints are:
  1. PRIMARY KEY
  2. UNIQUE
  3. CHECK
  4. DEFAULT
  5. NOT NULL
#### Table Level Constraints:<br>
- Table level Constraints were applied to the entire table and cannot be applied to the specific columns.
- Constraints were defined at the end of the CREATE table statement or through ALTER TABLE statement.
- Table Level Constraints are:
  1. PRIMARY KEY
  2. CHECK
  3. FOREIGN KEY
#### Various Constraints:
 ###### 1.PRIMARY KEY:
- (NOT NULL + UNIQUE)
- Uniquely identifies each record in table.
- Only one PRIMARY key is allowed per table.

##### 2.FOREIGN KEY:
- A Foreign Key is a column or set of columns that references the primary key or a unique key in another table.
- Establishes relationship between tables, which ensures referential integrity.

##### 3.DEFAULT:
- It provides predefined value for a column if no value is specified during insertion.
- A default value can be literal, an expression or a sql function.

##### 4.NOT NULL:
- It ensures column cannot have NULL values.
- Duplicate values are allowed.

##### 5.UNIQUE:
- Accepts NULL values.
- Ensures Uniqueness among all values in the column.

##### 6.CHECK:
- Enforces particular condition on a column values.
- A single column can have multiple CHECK constraints that reference its definition.

#### Impacts of Constraints on Database:

The impacts of constrainsts on the database are:<br>
- <b>Data Integrity:</b> Ensures the accuracy and consistency of data.
- <b>Reliability:</b> Guarantees dependable and trustworthy data.
- <b>Consistency: </b>Maintains uniformity and coherence of data.
- <b>Error Prevention:</b> Helps prevent data-related errors and inconsistencies.
- <b>Referential Integrity:</b> Ensures consistency between related tables.
- <b>Data Validity: </b>Validates data to meet specified criteria.
- <b>Security:</b>Enhances security by controlling data access.
- <b>Compliance:</b> Ensures adherence to predefined business rules.
- <b>Performance:</b> Can impact database performance depending on complexity.
- <b>Maintenance:</b> Simplifies database maintenance and management.







