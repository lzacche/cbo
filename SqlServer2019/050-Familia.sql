--drop table Cbo2002.Familia 
create table Cbo2002.Familia (
	Codigo          int             not null,
    SubGrupoCodigo  int             not	null,
	Titulo          varchar(200)    not null,
)
go

alter table Cbo2002.Familia add constraint PK_Familia primary key (Codigo);
go


alter table Cbo2002.Familia add constraint UK_Familia_Titulo unique (Titulo);
go

alter table Cbo2002.Familia add constraint FK_SubGrupo_Familia foreign key (SubGrupoCodigo) references Cbo2002.SubGrupo (Codigo);
go

