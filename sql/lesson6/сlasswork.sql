create table article (
ID bigint,
constraint ARTICLE_PK primary key (ID),
HEADER nvarchar(100),
TEXT blob,
AUTHOR_ID bigint,
constraint AUTHOR_ID foreign key (AUTHOR_ID) references author (ID)
);