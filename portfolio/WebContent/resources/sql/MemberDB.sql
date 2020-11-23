USE portfolioDB;

CREATE TABLE MEMBER ( 
    ID VARCHAR(20) NOT NULL,
    PW VARCHAR(20) NOT NULL,
    NAME VARCHAR(40) NOT NULL,        
    primary key(ID) 
) default CHARSET=utf8;

desc member;
select * from member;

drop table member;