CREATE TABLE shop (
    ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    NAME NVARCHAR(50)
);


insert into shop (name) values ('Віталік');
insert into shop  values (null, 'Максим');
select last_insert_id();