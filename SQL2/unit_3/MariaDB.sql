create table demotable(id bigint(20), nombre varchar(50));

insert into demotable values (7,'lorem 1');
insert into demotable values (8,'lorem 2');
insert into demotable values (4,'lorem 3');
insert into demotable values (6,'lorem 4');

SELECT * FROM demotable

alter table demotable add CONSTRAINT pk_id PRIMARY key(id);

SELECT * FROM demotable