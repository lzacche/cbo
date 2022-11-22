--drop table Cbo2002.Ocupacao 
create table Cbo2002.Ocupacao (
	Codigo          int             not null,
    FamiliaCodigo   int             not	null,
	Titulo          varchar(200)    not null,
)
go

alter table Cbo2002.Ocupacao add constraint PK_Ocupacao primary key (Codigo);
go

alter table Cbo2002.Ocupacao add constraint UK_Ocupacao_Titulo unique (Titulo);
go

alter table Cbo2002.Ocupacao add constraint FK_Familia_Ocupacao foreign key (FamiliaCodigo) references Cbo2002.Familia (Codigo);
go

