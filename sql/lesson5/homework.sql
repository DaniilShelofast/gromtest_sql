create table MOVIE(
ID bigint,
constraint primary key ID_MOVIE (ID),
TITLE nvarchar(50) not null unique,
DIRECTOR nvarchar(20) not null,
YEAR int check (YEAR between 1900 and 2023),
LENGTH_MINS  bigint check (LENGTH_MINS between 10 and 200)
);

create table MOVIE_STAT(
ID bigint,
constraint primary key ID_MOVIE_STAT (ID),
RATING decimal (2,1) check (RATING between 1 and 10),
DOMESTIC_SALES bigint,
INTERNATIONAL_SALES bigint
);

SELECT DIRECTOR, count(*) FROM movie
group by DIRECTOR;

select DIRECTOR,  sum(DOMESTIC_SALES), sum(INTERNATIONAL_SALES) from movie_stat, movie
where movie_stat.ID = movie.ID
group by movie.DIRECTOR;

select DIRECTOR, sum(DOMESTIC_SALES), sum(INTERNATIONAL_SALES) from movie
join movie_stat on movie_stat.ID = movie.ID
group by DIRECTOR;

------------

select TITLE,  max(YEAR) from movie_stat, movie
group by TITLE;

select * from movie_stat
order by INTERNATIONAL_SALES desc;