
create table torum_categories(
ID bigint,
constraint categories_pk primary key (ID),
TITLE varchar(64),
DESCRIPTION text,
DATE timestamp,
IP varchar(20)
);

create table torum_subcategories(
ID bigint,
constraint subcategories_pk primary key (ID),
ID_CATEGORY bigint,
constraint ID_CATEGORY foreign key (ID_CATEGORY) references torum_categories(ID),
TITLE varchar (45),
DESCRIPTION text,
DATE timestamp,
IP varchar(20)
);

create table users(
ID bigint,
constraint users_pk primary key (ID),
NICK varchar (16),
PASSWORD varchar (128),
EMAIL varchar(128),
DATE timestamp,
KARMA decimal(9,2),
IP varchar(20)
);

create table torum_polls_options(
ID bigint,
constraint torum_polls_options_pk primary key (ID),
ID_POST bigint,
constraint ID_POST foreign key (ID_POST) references torum_posts (ID),
TITLE varchar (64),
DATE timestamp
);

create table torum_posts(
ID bigint,
constraint torum_posts_pk primary key (ID),
ID_SUBCATEGORY bigint,
constraint ID_SUBCATEGORY foreign key (ID_SUBCATEGORY) references torum_subcategories (ID),
ID_USER bigint,
constraint ID_USER foreign key (ID_USER) references users(ID),
PARENT_POST bigint,
constraint PARENT_POST foreign key (PARENT_POST) references torum_polls_options (ID),
TITLE varchar (90),
CONTENT text,
IS_POLL boolean,
DATE timestamp,
IP varchar(20)
);

----------------------

create table torum_polls_options_votes(
ID bigint,
constraint torum_polls_options_votes_pk primary key (ID),
ID_POLL_OPTION bigint,
constraint ID_POLL_OPTION foreign key (ID_POLL_OPTION) references torum_polls_options (ID),
ID_USER bigint,
constraint ID_USER foreign key (ID_USER) references users(ID),
DATE timestamp,
IP varchar(20)
);



