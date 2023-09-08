 create table AUTHOR (
 ID bigint,
 CONSTRAINT AUTHOR_PK PRIMARY KEY (ID),
 NAME nvarchar(50) not null,
 LAST_NAME nvarchar (50) unique,
 COUNTRY nvarchar(50) default 'ENGLAND',
 AGE bigint default 0,
 ARTICLES_COUNT bigint check (ARTICLES_COUNT > 10),
 constraint CHECK_COUNTRY check (COUNTRY != 'CHINE' AND LAST_NAME != 'TEST_LN')
 );