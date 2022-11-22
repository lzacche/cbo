--drop table Cbo2002.AtividadeOcupacional 
create table Cbo2002.AtividadeOcupacional (
	AtividadeOcupacionalId      int             not null    identity(1,1),
    GrandeAreaOcupacionalId     int             not	null,
    Codigo                      int             not null,
	Nome                        varchar(200)    not null,
)
go

alter table Cbo2002.AtividadeOcupacional add constraint PK_AtividadeOcupacional primary key (AtividadeOcupacionalId);
go

alter table Cbo2002.AtividadeOcupacional add constraint UK_AtividadeOcupacional_GrandeAreaOcupacionalId_Codigo unique (GrandeAreaOcupacionalId, Codigo);
go

alter table Cbo2002.AtividadeOcupacional add constraint UK_AtividadeOcupacional_GrandeAreaOcupacionalId_Nome unique (GrandeAreaOcupacionalId, Nome);
go

alter table Cbo2002.AtividadeOcupacional add constraint FK_GrandeAreaOcupacional_AtividadeOcupacional foreign key (GrandeAreaOcupacionalId) references Cbo2002.GrandeAreaOcupacional (GrandeAreaOcupacionalId);
go

