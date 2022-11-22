--drop table Cbo2002.SubGrupoPrincipal 
create table Cbo2002.SubGrupoPrincipal (
	Codigo                  int             not null,
    GrandeGrupoCodigo       int             not	null,
	Titulo					varchar(200)    not null,
)
go

alter table Cbo2002.SubGrupoPrincipal add constraint PK_SubGrupoPrincipal primary key (Codigo);
go

alter table Cbo2002.SubGrupoPrincipal add constraint UK_SubGrupoPrincipal_Titulo unique (Titulo);
go

alter table Cbo2002.SubGrupoPrincipal add constraint FK_GrandeGrupo_SubGrupoPrincipal foreign key (GrandeGrupoCodigo) references Cbo2002.GrandeGrupo (Codigo);
go

