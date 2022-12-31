# cbo
Classificação Brasileira de Ocupações

Este repositório tem como objetivo compartilha uma forma de usar (dentre as muitas possível) os dados da CBO (Classificação Brasileira de Ocupações).

O que é a CBO?
Uma explicação rápida e rasteira (e um tanto imprecisa): É o que você deseja usar quando pensa em "cadastro de profissões" para usar no seu software ou sistema. 
Os cadastros de pessoas físicas frequentemente contém um campo para profissão, mas os negócios em geral requerem saber o que a pessoa faz, o seu trabalho atual.
E o trabalho atual da pessoa é a sua ocupação, não sua profissão. A profissão é algo relacionado a carreira, tem a ver com as diversas ocupações ao longo da vida.
Já a ocupação é a informação em um dado momento.

Como Esse repositório pode ser usado?
No futuro este repositório pretende oferecer mecanismos de consulta através de:
- Micro serviços;
- Entidades mapeadas via Entity Framework;
- Consultas diretamente às tabelas no SGBD;
- API implementada em Cloud Function  (Google? Azure? Outra?);

Outras idéias são bem vindas! :-)

Já na primeira versão você obtém  um conjunto de scripts para criação das estruturas em SGBDR Microsoft SQL Server 2019, além da carga de dados da CBO versão 2002, a mais recente até o momento.

Importante: Os artefatos de software não tem o objetivo de prover mecanismos para atualizar os dados. Os dados são sempre somente leitura. A atualização dos dados será sempre, somente, através de scripts, a partir da fonte oficial, que é o MTE (ou algo que venha a substituí-lo).


Os 7 arquivos .csv foram obtidos em um arquivo .zip disponível em  http://cbo.maisemprego.mte.gov.br/cbosite/pages/downloads.jsf.
Neste mesmo endereço há os 4 arquivos .pdf, também encontrado nessa pasta.


Lista de Tarefas
================
- [ ] Desenhar o modelo de dados
- [ ] Escrever uma breve explicação sobre o modelo de dados
- [ ] Criar scripts shell para automatizar a criação e carga do banco
- [ ] Criar uma aplicação exemplo
- [ ] Criar uma API de consulta.
