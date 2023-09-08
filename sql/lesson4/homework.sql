  create table Hotel (
  ID bigint,
  CONSTRAINT Hotel_ID PRIMARY KEY (ID),
  COUNTRY nvarchar(50) default 'N/A',
  CITY nvarchar(50) not null,
  STREET nvarchar(50),
  CONSTRAINT TEST_COUNTRY check (COUNTRY != 'Romania' and COUNTRY != 'China' and COUNTRY != 'Russia' and COUNTRY != 'Belgium')
  );

  create table orders(
  ID bigint check (ID < 10000),
  constraint ORDER_ID primary key(ID),
  USER_ID bigint unique,
  ROOM_ID bigint unique,
  DATE_FROM timestamp,
  DATE_TO timestamp,
  MONEY_PAIN double
  );