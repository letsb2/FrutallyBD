Frutally BD - Banco de Dados da Sorveteria Frutally
Projeto desenvolido para a disciplina Principios de Banco de Dados, com o objetivo de modelar e implementar um banco relacional contendo tabelas relacionadas, restrições e operações de CRUD.

Descrição do Projeto:
O Banco de Dados representa o funcionamento básico da Sorveteria Frutally, contendo:
- Cadastro de Clientes
- Cadastro de Produtos
- Registro de vendas
- Itens de venda (cada produto vendido por venda)
- Consultas relacionando todas as tabelas

| Arquivo         | Descrição                                   |
| --------------- | ------------------------------------------- |
| **frutally.db** | Banco de dados SQLite completo e funcional  |
| **tabelas.sql** | Script responsável pela criação das tabelas |
| **inserts.sql** | Script com os dados inseridos nas tabelas   |


Modelagem (DER)

O banco de dados possui 3 tabelas principais e 1 tabela relacional:

cliente (1) — (N) venda
venda (1) — (N) item_venda
produto (1) — (N) item_venda

Relacionamentos:
Um cliente pode ter várias vendas
Uma venda pode ter vários itens
Um produto pode estar em várias vendas

O DER segue o padrão:
Cliente 1 → N Venda
Venda 1 → N Item_Venda
Produto 1 → N Item_Venda

Tecnologias utilizadas:
- SQLite
- VS Code
- Extensão SQLite Viewer
- GitHub

Autora:
Letícia Bressanin
Estudante de Ciência da Computação – USC
LinkedIn: www.linkedin.com/in/leticia-bressanin


