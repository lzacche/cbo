--drop table Cbo2002.GrandeAreaOcupacional 
create table Cbo2002.GrandeAreaOcupacional (
	GrandeAreaOcupacionalId     int             not null    identity(1,1),
    OcupacaoCodigo              int             not	null,
    Sigla                       char(1)         not null,
	Titulo                      varchar(200)    not null,
)
go

alter table Cbo2002.GrandeAreaOcupacional add constraint PK_GrandeAreaOcupacional primary key (GrandeAreaOcupacionalId);
go

alter table Cbo2002.GrandeAreaOcupacional add constraint UK_GrandeAreaOcupacional_OcupacaoCodigo_Titulo unique (OcupacaoCodigo, Titulo);
go

alter table Cbo2002.GrandeAreaOcupacional add constraint FK_Ocupacao_GrandeAreaOcupacional foreign key (OcupacaoCodigo) references Cbo2002.Ocupacao (Codigo);
go

