LiCS
====

Contains code submitted as part of our Logic in CS assignments

===============================================================================================================================

Assignment 1 Brief:

Consider an employee database maintained by company XYZ:

The database is a collection of records - one per employee.

A record contains the following attributes: name, unique identifier, age, monthly pay, and  months of experience.

[Ex. 1]: Write a Prolog program for selecting employees under each of the following conditions:

age bracket (i.e. k1 <= age <= k2, where k1 and k2 are inputs) and pay bracket (i.e. p1 <= pay <= p2)

a minimum experience and a maximum pay  (given as input).

Suppose that company XYZ also maintains a project database (in addition to the employee database):

The database is a collection of records - one per project.

Each record contains the following attributes: number of employees (required for the project), minimum experience (required for the project), and maximum pay (affordable by the project per employee).

[Ex. 2]: Write a Prolog program to find a suitable assignment of employees to an input list of projects such that no employee is assigned more than one project.

Choose an appropriate representation for the records and the database.

- More details in /Assignment 1/README.txt

Todo: Clean assign_projects/0

===============================================================================================================================

Assignment 2 Brief:

Write a Prolog program for codifying Article I : Sections 6 to 8 of the Constitution of the U.S.

Your program should be able to handle queries of the following kind:

How does a Bill become Law?

Can a Senator be arrested?

Formulate at least five more queries that your program should be able to handle.

Variations in parameters/arguments will not be counted as different queries.

- More details in /Assignment 2/README.txt
