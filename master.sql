create database bpit;

use bpit;

create table if not exists login (loginId int(5) primary key auto_increment, userId varchar(200) unique not null,password varchar(200) not null,firstName varchar(100) not null, lastName varchar(100) not null,mobileNumber bigint not null,uniqueId bigint unique not null,registeredAs varchar(20) not null,course varchar(10) not null);



create table if not exists library (libraryId int(5) primary key auto_increment,userId varchar(200) not null,fileName varchar(300) not null,type varchar(20) not null,semester varchar(30) not null,course varchar(10) not null,subject varchar(100) not null,branch varchar(20) not null,locationOfUploadedFile varchar(500) not null,uploadDate date not null, foreign key(userId) references login(userId));



create table topics (
topic_id        int(8) not null primary key auto_increment,
topic_subject   varchar(100) not null,
topic_date      datetime not null,
topic_cat       varchar(40) not null,
topic_by        varchar(200) not null,
topic_desc      text not null,
topic_status    int(2) not null,

foreign key(topic_by) references login(userId)
);

create table posts (
post_id         int(8) not null primary key auto_increment,
post_content    text not null,
post_date       datetime not null,
topic_id        int(8) not null,
post_by         varchar(200) not null,


foreign key(post_by) references login(userId),
foreign key(topic_id) references topics(topic_id)
);


create table tech_subjects (
	subject_id int(5) primary key auto_increment,
	subject varchar(100) not null
);


create table nontech_subjects (
	subject_id int(5) primary key auto_increment,
	subject varchar(100) not null
);
