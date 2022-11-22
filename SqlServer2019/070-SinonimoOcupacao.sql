--drop table Cbo2002.SinonimoOcupacao 
create table Cbo2002.SinonimoOcupacao (
	SinonimoOcupacaoId      int             not null    identity(1,1),
    OcupacaoCodigo          int             not	null,
	Titulo                  varchar(200)    not null,
)
go

alter table Cbo2002.SinonimoOcupacao add constraint PK_SinonimoOcupacao primary key (SinonimoOcupacaoId);
go

alter table Cbo2002.SinonimoOcupacao add constraint UK_SinonimoOcupacao_Titulo unique (Titulo);
go

alter table Cbo2002.SinonimoOcupacao add constraint FK_Ocupacao_SinonimoOcupacao foreign key (OcupacaoCodigo) references Cbo2002.Ocupacao (Codigo);
go

