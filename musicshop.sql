create table if not exists Genre (
	id serial primary key,
	name varchar(50) not null unique
);

create table if not exists Artist (
	id serial primary key,
	name varchar(50) not null,
	genre_id integer not null references Genre(id)
);

create table if not exists Album (
	id serial primary key,
	name varchar(50) not null,
	year_of_issue integer not null,
	artist_id integer not null references Artist(id)
);

create table if not exists Track (
	id serial primary key,
	name varchar(50) not null,
	duration integer not null,
	trackt_id integer not null references Album(id)
);