create table user (
userid int primary key,
name varchar(90)
email varchar(90),
password varchar(90),
):


create table project (
projectid int primary key,
title varchar(90)
descrip varchar(255),
startdate date,
enddate date,
);

create table task (
taskid int primary key,
projectid int,
title varchar(90),
description varchar(255),
status varchar(255),
startdate date,
enddate date
foreign key (projectid) references project(projectID)
);


create table  taskAssign (
taskid INT,
userid INT,
foreign key (taskid) references task(taskid),
foreign key (userid) references User(userid),

);


