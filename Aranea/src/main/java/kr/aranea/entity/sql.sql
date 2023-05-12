CREATE TABLE CREATEUSER(
        ID VARCHAR2(50),
        PW VARCHAR2(100) NOT NULL,
        NAME VARCHAR2(50) NOT NULL,
        TEL VARCHAR2(50) NOT NULL,
        ACCOUNT VARCHAR2(13) NOT NULL,
        MONEY NUMBER DEFAULT 0,
        POINT NUMBER DEFAULT 0,
        SPIDER VARCHAR2(1) DEFAULT 'N',
        
        CONSTRAINT USER_ID_PK PRIMARY KEY(ID)
);


DROP TABLE CREATEUSER;


SELECT * FROM CREATEUSER;

CREATE TABLE WRITING(
	num number,
	ID VARCHAR2(50),
	IMG1 VARCHAR2(300) NOT NULL,
	IMG2 VARCHAR2(300) default null,
	IMG3 VARCHAR2(300) default null,
	TITLE VARCHAR2(100) NOT NULL,
	CATEGORY VARCHAR2(50) NOT NULL,
	ADDRESS VARCHAR2(100) NOT NULL,
	CONDITION VARCHAR2(20) NOT NULL,
	PRICE VARCHAR2(10) NOT NULL,
	CONTENT VARCHAR2(3000) NOT NULL,
	counts NUMBER DEFAULT 1,
	
	PRIMARY KEY(num)
);

DROP TABLE WRITING;

SELECT * FROM WRITING;

create sequence num_writing
increment by 1
start with 1;

drop sequence num_writing;
