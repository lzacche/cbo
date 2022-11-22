--drop table Cbo2002.SubGrupo 
create table Cbo2002.SubGrupo (
	Codigo                  int             not null,
	SubGrupoPrincipalCodigo int             not	null,
	Titulo                  varchar(200)    not null,
)
go

alter table Cbo2002.SubGrupo add constraint PK_SubGrupo primary key (Codigo);
go

alter table Cbo2002.SubGrupo add constraint UK_SubGrupo_Titulo unique (Titulo);
go

alter table Cbo2002.SubGrupo add constraint FK_SubGrupoPrincipal_SubGrupo foreign key (SubGrupoPrincipalCodigo) references Cbo2002.SubGrupoPrincipal (Codigo);
go

