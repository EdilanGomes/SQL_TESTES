
-- O banco de dados da empresa fictícia foi desenvolvido com foco na eficiência e organização das informações cadastrais. 
-- A tabela principal contém os seguintes campos: codigo, nome, Cpf, LocalNascimento, uf, sexo e cod_departamento.


create database Departamento;
use Departamento;

create table Local_de_trabalho(
codigo int primary key,
descrição varchar(50)
);

insert into Local_de_trabalho
values(100,"Financeiro");

insert into Local_de_trabalho
values(101,"Recursos Humanos");

insert into Local_de_trabalho
values(102,"Pintura Automotiva");

insert into Local_de_trabalho
values(103,"Montagem de Motores");

insert into Local_de_trabalho
values(104,"Revisao Final");

insert into Local_de_trabalho
values(105,"Almoxarifado");

insert into Local_de_trabalho
values(106,"Servicos Gerais");



create table funcionarios(
codigo int primary key, 
nome varchar(50),
Cpf varchar(14),
LocalNascimento varchar(100),
uf varchar(50),
sexo char,
cod_departamento int,
foreign key (cod_departamento) references Local_de_trabalho (codigo)
);

insert into funcionarios
values("1001","Ana Lucia ", "12312312310", "Sao Paulo ", "SP","F", "100");

insert into funcionarios
values("1002","Breno Caldas ", "12312312311", "Piracicaba", "SP","M", "100");

insert into funcionarios
values("1003","Laercio Dias ", "12312312312", "Guarulhos", "SP","M", "101");

insert into funcionarios
values("1004","Carlos Ruiz", "12312312313", "Blumenau", "SC","M", "101");

insert into funcionarios
values("1005","Jeferson Deoclecio", "12312312314", "Chapeco ", "SC","M", "102");

insert into funcionarios
values("1006","Guilherme Bras", "12312312315", "Canoas", "RS","M", "102");

insert into funcionarios
values("1007","Fernanda Micaela ", "12312312316", "Santa Maria", "RS","F", "103");

insert into funcionarios
values("1008","Fabiane Mendes", "12312312317", "Sao Paulo", "SP","F", "103");

insert into funcionarios
values("1009","Leticia Alves ", "12312312318", "Campina Grande", "PB","F", "104");

insert into funcionarios
values("1010","Graziele Lima ", "12312312319", "Rio de Janeiro ", "RJ","F", "104");

insert into funcionarios
values("1011","Carla Maria Fagundes", "12312312320", "Recife", "PE","F", "105");

insert into funcionarios
values("1012","Janaina Pires", "12312312321", "Campinas", "SP","F", "105");

insert into funcionarios
values("1013","Leonardo Berto", "12312312322", "Criciuma", "SC","M", "106");

insert into funcionarios
values("1014","Angela Maria Fisichella", "12312312323", "Cascavel", "PR","F", "106");


-- COMANDOS PARA CONSULTAS:

use Departamento;

select * from funcionarios;

select * from Local_de_trabalho;






