-- Create a simple Library Management System using Book and Member tables.
-- 1. Create both tables with suitable attributes.
-- 2. Apply Primary Key, Foreign Key, NOT NULL, UNIQUE, and DEFAULT constraints.
-- 3. Insert at least 5 books and 3 members.
-- 4. Display books belonging to a particular category.
-- 5. Update the availability status of a book.
-- 6. Delete a book based on its ID.
-- 7. Add a new column to the Book table using ALTER.
-- 8. Rename the Book table using RENAME.
-- 9. Display the records after performing the operations.

create database library;
use library;
create table member (
member_id INT primary key auto_increment,
member_name varchar(100) not null,
email varchar(50) unique not null,
phone varchar(15),
membership_status varchar(20) default 'active'
);
create table book (
    book_id int primary key auto_increment,
    title varchar(100) not null,
    author varchar(50) not null,
    category varchar(50) not null,
    member_id int,
    availability varchar(20) default 'Available',
    foreign key (member_id) REFERENCES member(member_id)
);
insert into member (member_name, email, phone)
values
('rahul', 'rahul@gmail.com', '9876543210'),
('priya', 'priya@gmail.com', '9876543211'),
('aman', 'aman@gmail.com', '9876543212');
insert into book (title, author, category, member_id)
values
('datbase', 'abc', 'dbms', 1),
('cpp', 'xyz', 'programming', 2),
('python', 'namya', 'programming', 3),
('operating system', 'lmnop', 'os', null),
('computer networks', 'wyz', 'networking', null);
select * from book
where category = 'programming';
update book
set availability = 'issued'
where book_id = 1;
delete from book
where book_id = 5;
alter table book
add publisher varchar(100);
rename table book to library_book;
select * from library_book;
select * from member;


