create database HRR;
use HRR;

create table Usuarios(
	id_usu int primary key,
	rut_usu varchar(14),
	nom_usu varchar(50),
    ape_usu varchar(50),
	con_usu varchar(40)
);

create table Estados(
	id_est int primary,
	nom_est varchar(50)
);

create table Requirentes(
	id_req int primary key auto_increment,
	nom_req varchar(50),
	rut_req varchar(14),
);

create table Formatos(
	id_for int primary key auto_increment,
	nom_for varchar(50) not null
);

create table Licitaciones(
	id_lic int primary key auto_increment,
	id_for int not null,
	nom_req varchar(50) not null,
	nom_lic varchar(50) not null,
	fec_cre date not null,
	fec_ven date not null
	foreign key(nom_req_) references Requirenter(nom_req)
);





insert into Usuarios values (1,'20.156.125-8','Juanito','123456');
insert into Usuarios values (2,'25.115.158-9','Laura','654321');
insert into Usuarios values (3,'20.123.156-7','Esteban','987654');

insert into Estados values (1,'activo');
insert into Estados values (2,'inactivo');

insert into Requirentes (nom_req,rut_req)values ('requirente 1','20.175.348-5');
insert into Requirentes (nom_req,rut_req)values ('requirente 2','15.265.123-7');
insert into Requirentes (nom_req,rut_req)values ('requirente 3','12.262.315-8');

insert into Formatos (nom_for) values ('compras de tienda 1');
insert into Formatos (nom_for) values ('compras de material medico');
insert into Formatos (nom_for) values ('compras de material informatico');

insert into Licitaciones (id_for,nom_req,nom_lic,fec_cre,fec_ven) values (1,'requirente 1','compra de materiales',22/03/2020,22/04/2020);
insert into Licitaciones (id_for,nom_req,nom_lic,fec_cre,fec_ven) values (2,'requirente 3','compra de material quirurgico',13/02/2019,13/03/2019);
insert into Licitaciones (id_for,nom_req,nom_lic,fec_cre,fec_ven) values (3,'requirente 2','compra de material informatico',25/05/2020,25/06/2020);


select * from Usuarios;
select * from Estados;
select * from Requirentes;
select * from Formatos;
select * from Licitaciones;