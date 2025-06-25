USE LIBRARY;

SELECT * FROM book;
SELECT * FROM employee;

USE LIBRARY;

INSERT INTO BOOK (book_id, book_name, author_name, edition)        
VALUES
(101, 'eco', 'rs', 2021),
(102, 'history', 'rds', 2021),
(103, 'geo', 'gaur', 2021),
(104, 'socio', 'n sangwan', 2021),
(105, 'polity', 'laxmikanth', 2021);

ALTER TABLE employee                                     /*modifications*/
MODIFY emp_email_id varchar(20);

INSERT INTO EMPLOYEE (Emp_id, emp_name, designation, emp_phone_no, emp_email_id)
VALUES
(2121, 'Harish', 'clerk', 7757212154, 'abc@gmail.com'),
(2122, 'Manish', 'dean', 1254545252, 'asd@gmail.com'),
(2123, 'Mehul', 'principal', 2022154851, 'qwe@gmail.com'),
(2124, 'Vishal', 'prof.', 2254536021, 'azc@gmail.com'),
(2125, 'Viraj', 'prof.', 2054821621, 'tyu@gmail.com');

 /*just below varchar size incresed to 30 from 20 as thrown error while updating designation*/
ALTER TABLE EMPLOYEE                                  
MODIFY designation VARCHAR(30);

UPDATE EMPLOYEE                                /*use of where command along with update*/
SET designation = 'vice principal'
WHERE Emp_id = 2123;



set sql_safe_updates=0;  /*safe mode off in sql*/

DELETE FROM EMPLOYEE                  /*use of delete command*/
WHERE emp_name = 'Viraj';

UPDATE EMPLOYEE                            /*null handling*/
SET emp_email_id = NULL
WHERE Emp_id = 2121;

