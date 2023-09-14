create table MOVIE(
ID bigint,
constraint primary key ID_MOVIE (ID),
TITLE nvarchar(50) not null unique,
DIRECTOR nvarchar(20) not null,
YEAR int check (YEAR between 1900 and 2023),
LENGTH_MINS  int check (LENGTH_MINS between 10 and 200)
);

create table MOVIE_STAT(
ID bigint,
constraint primary key ID_MOVIE_STAT (ID),
RATING decimal (3,1) check (RATING between 1 and 10),
DOMESTIC_SALES int,
INTERNATIONAL_SALES int
);

-------------

SELECT DIRECTOR, count(*) FROM movie
group by DIRECTOR;

select DIRECTOR,  sum(DOMESTIC_SALES), sum(INTERNATIONAL_SALES) from movie_stat, movie
where movie_stat.ID = movie.ID
group by movie.DIRECTOR;

select DIRECTOR, sum(DOMESTIC_SALES), sum(INTERNATIONAL_SALES) from movie
join movie_stat on movie_stat.ID = movie.ID
group by DIRECTOR;

------------
select * from movie
order by YEAR desc;

select * from movie_stat
order by INTERNATIONAL_SALES desc;