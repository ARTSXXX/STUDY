create database ARTS_LAB_3
go

use ARTS_LAB_3;

go


create table ������(
������������ nvarchar(20) primary key,
���� real,
���������� int 
);

create table ��������� (
������������_����� nvarchar(20) primary key,
����� nvarchar(20),
���������_���� nvarchar(20)
);

create table ������ (
�����_������ int primary key,
������������_������ nvarchar(20) foreign key REFERENCES ������(������������),
����_������� real,
���������� int,
����_�������� date,
�������� nvarchar(20) foreign key REFERENCES ���������(������������_�����)
);
