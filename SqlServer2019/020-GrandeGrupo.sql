
create table Cbo2002.GrandeGrupo (
	Codigo			int    			not null,
	Titulo			varchar(200)	not null,
)
go

alter table Cbo2002.GrandeGrupo add constraint PK_GrandeGrupo primary key (Codigo);
go

--alter table Cbo2002.GrandeGrupo add constraint UK_GrandeGrupo_Titulo unique (Titulo); --Há repetições!!!!
go

