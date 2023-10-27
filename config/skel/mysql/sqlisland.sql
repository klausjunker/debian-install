drop table if exists dorf;
create table dorf( 
      dorfnr int, 
      name char(20),
      haeuptling int
);

drop table if exists bewohner;
create table bewohner( 
      bewohnernr int, 
      name char(20),
      dorfnr int, 
			geschlecht char(10),
			beruf char(20),
			gold int,
			status char(10)
);

drop table if exists gegenstand;
create table gegenstand( 
	gegenstand char(20),
	besitzer int
);

load data local 
	infile 'dorf.csv'
	into table dorf 
	fields terminated by ','; 
load data local 
	infile 'bewohner.csv' 
	into table bewohner 
	fields terminated by ','; 
load data local 
	infile 'gegenstand.csv' 
	into table gegenstand 
	fields terminated by ','; 

