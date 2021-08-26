create user if not exists gast identified by "gast";
grant all on gast.* to gast;
create database if not exists gast;
show grants for gast;
