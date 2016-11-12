-- 3.1 Creating tables
--
create table Company
  (name varchar(20) primary key,
   country varchar(20),
   no_employees int,
   for_profit char(1)
   );

insert into Company  values ('GizmoWorks','USA',   20000,'y');
insert into Company  values ('Canon',     'Japan', 50000,'y');
insert into Company  values ('Hitachi',   'Japan', 30000,'y');
insert into Company  values ('Charity',   'Canada',  500,'n');

-- Create a separate table Product, with a foreign key to the company:
create table Product
  (name varchar(20) primary key,
   price float,
   category varchar(20),
   manufacturer varchar(20), 
   FOREIGN KEY(manufacturer) REFERENCES Company(name) ON UPDATE CASCADE
   );

-- PRAGMA foreign_keys=ON;
insert into Product values('Gizmo',       19.99, 'gadget', 'GizmoWorks');
insert into Product values('PowerGizmo',  29.99, 'gadget', 'Hitachi');
insert into Product values('SingleTouch',149.99, 'photography', 'Canon');
insert into Product values('MultiTouch', 199.99, 'photography', 'GizmoWorks');
insert into Product values('SuperGizmo',  49.99, 'gadget', 'Charity');