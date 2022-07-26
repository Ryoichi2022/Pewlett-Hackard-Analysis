Challenge 7
# Pewlett Hackard Analysis

## 1. Purpose of the project
Pewlett Hackard begins to experience retirement of baby boomer employees and think about which positions will need to be filled in the near future. Bobby, HR Analyst, is going to perform a research to find answers to questions such as who will be retiring in the next few years and how many positions Pewlett Hackard will need to fill.

The objective of the project is to help Bobby build an employee database with SQL from CSV files as the company decided to use SQL instead of Excel and VBA to work with its data.


## 2. Procedures and results
### Procedures of the project
Based on the provided CSV files, the employees that will be retiring in the next few years are identified (unique_titles.csv), and then, the data is summarized to figure out the number of retiring employees per title (retiring_titles.csv) to prepare for the “silver tsunami”. In addition, a mentorship eligibility table is created to identify employees that are eligible to participate in a mentorship program (mentorship_eligibility.csv).

### Result 1
According to the research, 72,458 employees will be retiring in the next few years. This is a number without duplicates. Also, the employees that have already left the company are excluded from the list. Considering that the ‘employees.csv’ contains 300,024 employees, approximately 24% of employees, who were born between January 1, 1952 and December 31, 1955, will be retiring.

### Result 2
In the Table 1, 72,458 employees are summarized by the most recent title of each employee. 25,916 senior engineer positions and 24,926 senior staff positions will be left open. They are the top two positions the company need to fill in the next few years.

#### (Table 1) Count of retiring employees

![](https://github.com/Ryoichi2022/Pewlett-Hackard-Analysis/blob/main/Table%201.png)

### Result 3
Those employees who were born between January 1, 1965 and December 31, 1965 are eligible to the company’s mentorship program. There are currently 1,549 employees that are eligible to the program. Their current title includes Senior Staff (475 employees) and Senior Engineer (248 employees) as well as Engineer (436 employees).

#### (Table 2) Count of employees eligible to the mentorship program

![](https://github.com/Ryoichi2022/Pewlett-Hackard-Analysis/blob/main/Table%202.png)

### Result 4
Table 1 and Table 2 indicates that the titles of the employees that are retiring in the next few years overlap with the titles of the employees that are eligible to the mentorship program. As a matter of fact, the top four major titles, including Senior Engineer, Senior Staff, Engineer, and Staff, are exactly the same between two groups.


## 3. Summary - Additional queries
### The number of roles to be filled
It may actually depend on how many employees are currently in Pewlett Hackard that would take over the opening positions in the next few years. While some younger employees change their jobs, others will continue to work with the company to be promoted to the higher positions. Therefore, the company does not necessarily recruit the same number of employees as those who are going to retire. An additional query will be what the number of employees are who were born between 1956 and 1964 and what the titles of those employees are.

### Qualified, retirement-ready employees to mentor younger employees
It appears that there are enough number of such employees as the number of employees eligible to the mentorship program is 1,549 while there are 72,458 employees that will retire in the next few years. As a result of further review, however, it is found that the youngest employees in the data were born in February 1965. The employees data provided for the project may be incomplete. Ensuring completeness of the employees data would be helpful to determine whether there are enough qualified employees for the mentorship program.
