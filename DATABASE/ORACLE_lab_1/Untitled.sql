create table APA_t 
(
x number (3),
s varchar (50));


alter table APA_T add primary key (X);

insert into APA_T (X,S) values (1, 'Pavel');
insert into APA_T (X,S) values (2, 'Jora');
insert into APA_T (X,S) values (3, 'Oleg');
commit;


select * from APA_T;

update APA_T set S ='Grisha' where X = 2;
update APA_T set S = 'Andrey' where X = 3;
commit;

select max(x) from APA_T;

delete from APA_T where S = 'Pavel';

create table APA_T1  
(

ID Number (10),
Names varchar (20),
CONSTRAINT fk_ FOREIGN KEY(ID) REFERENCES APA_T (x)

);

insert into APA_T1 (ID, Names) values (1, 'Roma');
insert into APA_T1 (ID, Names) values (2, 'Roma');


select X, Names from APA_T 
left outer join  APA_T1 
ON APA_T.X = APA_T1.ID 

select X, Names from APA_T 
Right outer join  APA_T1 
ON APA_T.X = APA_T1.ID 


select X, Names from APA_T 
Join  APA_T1 
ON APA_T.X = APA_T1.ID 

Drop table APA_T;
Drop table APA_T1;





