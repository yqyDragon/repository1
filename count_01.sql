create table Person(
    personid int,
    firstname varchar(255),
    lastname varchar(255)
);
create table Address(
    addressid int,
    personid int,
    city varchar(255),
    state varchar(255)
);
insert into Person values (1,'San','Zhang');
insert into Person values (2,'Si','Li');

insert into Address values ('291',1,'New York City','New York');

# Q：查询Person表中成员的名、姓、城市、州
# A：以Person表为主，外连接
select
       firstname,
       lastname,
       city,
       state
from person p left join Address a on p.personid = a.personid;


# 超过经理收入的员工
create table if not exists Employee(
    id int,
    name varchar(255),
    salary int,
    managerid int
);

Truncate table employee;
# 查询工资超过其对应经理的员工名字
# A：不是每个员工都有对应经理，内连接，匹配字段分别为经理id和员工id
