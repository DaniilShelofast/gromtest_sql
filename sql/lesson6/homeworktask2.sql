
CREATE TABLE torum_categories (
    ID BIGINT,
    CONSTRAINT categories_pk PRIMARY KEY (ID),
    TITLE VARCHAR(64),
    DESCRIPTION TEXT,
    DATE TIMESTAMP,
    IP VARCHAR(20)
);

CREATE TABLE torum_subcategories (
    ID BIGINT,
    CONSTRAINT subcategories_pk PRIMARY KEY (ID),
    ID_CATEGORY BIGINT,
    CONSTRAINT ID_CATEGORY FOREIGN KEY (ID_CATEGORY)
        REFERENCES torum_categories (ID),
    TITLE VARCHAR(45),
    DESCRIPTION TEXT,
    DATE TIMESTAMP,
    IP VARCHAR(20)
);

CREATE TABLE users (
    ID BIGINT,
    CONSTRAINT users_pk PRIMARY KEY (ID),
    NICK VARCHAR(16),
    PASSWORD VARCHAR(128),
    EMAIL VARCHAR(128),
    DATE TIMESTAMP,
    KARMA DECIMAL(9 , 2 ),
    IP VARCHAR(20)
);


CREATE TABLE torum_polls_options (
    ID BIGINT,
    CONSTRAINT torum_polls_options_pk PRIMARY KEY (ID),
    ID_POST BIGINT,
    CONSTRAINT ID_POST FOREIGN KEY (ID_POST)
        REFERENCES torum_posts (ID),
    TITLE VARCHAR(64),
    DATE TIMESTAMP
);

CREATE TABLE torum_posts (
    ID BIGINT,
    CONSTRAINT torum_posts_pk PRIMARY KEY (ID),
    ID_SUBCATEGORY BIGINT,
    CONSTRAINT ID_SUBCATEGORY FOREIGN KEY (ID_SUBCATEGORY)
        REFERENCES torum_subcategories (ID),
    ID_USER BIGINT,
    CONSTRAINT ID_USER FOREIGN KEY (ID_USER)
        REFERENCES users (ID),
    PARENT_POST BIGINT,
    CONSTRAINT PARENT_POST FOREIGN KEY (PARENT_POST)
        REFERENCES torum_polls_options (ID),
    TITLE VARCHAR(90),
    CONTENT TEXT,
    IS_POLL BOOLEAN,
    DATE TIMESTAMP,
    IP VARCHAR(20)
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



