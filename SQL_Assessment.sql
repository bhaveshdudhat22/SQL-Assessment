/* Write SQL query to solve the problem given below */

create database Nobel_win;
use Nobel_win;

create table Nobel_win(
YEAR int not null,
SUBJECT varchar(50) not null,
WINNER varchar(50) not null,
COUNTRY varchar(50) not null,
CATEGORY varchar(50) not null 
);

insert into Nobel_win values(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist');
insert into Nobel_win values(1970, 'Physics', 'Louis Neel', 'France', 'Scientist');
insert into Nobel_win values(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist');
insert into Nobel_win values(1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist');
insert into Nobel_win values(1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist');
insert into Nobel_win values(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist');
insert into Nobel_win values(1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist');
insert into Nobel_win values(1970, 'Physiology', 'Julius Axelord', 'USA', 'Scientist');
insert into Nobel_win values(1971, 'Physics', 'Denis Gabor', 'Hungary', 'Scientist');
insert into Nobel_win values(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist');
insert into Nobel_win values(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor');
insert into Nobel_win values(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist');
insert into Nobel_win values(1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist');
insert into Nobel_win values(1978, 'Peace', 'Anwar al-sadat', 'Egypt', 'President');
insert into Nobel_win values(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister');
insert into Nobel_win values(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist');
insert into Nobel_win values(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist');
insert into Nobel_win values(1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist');
insert into Nobel_win values(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist');
insert into Nobel_win values(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister');
insert into Nobel_win values(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist');
insert into Nobel_win values(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist');
insert into Nobel_win values(1987, 'Economics', 'Robert Solow', 'USA', 'Economist');
insert into Nobel_win values(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');

select * from Nobel_win;

/* Write sql query to find the nobel prize winners of the year 1970. Return year,subject and winner */
select YEAR, SUBJECT, WINNER from Nobel_win where YEAR = 1970; 

/* Write sql query to find the nobel prize winners in chemistry between the years 1965
and 1975. Begin and end values are included Return year, subject, winner and country */
select YEAR, SUBJECT, WINNER, COUNTRY from Nobel_win where YEAR > 1965 and YEAR < 1975;

/* Write sql query to retrieve the details of the winners whose first name matches with
the string ‘Louis’. Return year,subject,winner,country */
select YEAR, SUBJECT, WINNER, COUNTRY from Nobel_win where WINNER like '%Louis';

/* Write sql query to find Nobel prize winners for the subject that does not begin with
the letter ‘P’. Order the result by year, descending and winner in ascending */
select * from Nobel_win order by YEAR desc, WINNER asc;

/* Write sql query to find the details of 1970 Nobel prize winners. Order the result by
subject, ascending except for ‘Chemistry’ and ‘Economics’ which will come at the
end of the result set. Return year, subject, winner , country and category. */
select YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY from Nobel_win where YEAR = 1970;

