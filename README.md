# Banco de dados - Futebol

O objetivo desse trabalho é implementar um banco de dados de Futebol em Ruby

As tabelas são teams, players, coach e championship.

## Relacionamentos

### n -> n
O relacionamento n -> 1 está nas tabelas *teams* e *championships*. Um time pode participar de vários campeonatos e um campeonato pode ter vários times.

### n -> 1
O relacionamento n -> 1 está em *teams* e *players* pois um time pode ter vários jogadores.

### 1 -> 1
O relacionamento 1 -> 1 está nas tabelas *teams* e *coaches* pois cada time pode ter apenas 1 treinador.

## Funcionamento

Para criação do banco e das tabelas é só rodar o script *criaBanco.sh* utilizando `source ./criaBanco.sh` (o banco já está criado na litorina, mas se precisar criar novamente só rodar o script).

As operações da forma enunciada acontecem rodando o arquivo *populaBd.rb*: `ruby populaBd.rb`.

### Registros

Ao rodar `ruby populaBd.rb < registros.txt` o banco vai ser populado com alguns registros. Esses registros já estão no banco criado na litorina.

## Operações para cada tabela
- clear: similar ao comando "clear" do bash, mas para a aplicação. Limpa a tela para ajudar na visualização.

- exit: sai da aplicação.

### Tabela players
Armazena informações sobre jogadores de futebol.

- Insere: `insere players name_player="Nome" position="Posição" age="Idade" team="Time"`
- Altera: `altera players name_player="Nome" new_name="Novo Nome" new_position="Nova Posição" new_age="Nova Idade" new_team="Novo Time"`
- Exclui: `exclui players name_player="Nome"`
- Lista: `lista players`

### Tabela teams
Contém dados sobre times de futebol.

- Insere: `insere teams name_team="Nome" foundation="Ano de Fundação" invoicing="Faturamento"`
- Altera: `altera teams name_team="Nome" new_name="Novo Nome" new_foundation="Novo Ano" new_invoicing="Novo Faturamento"`
- Exclui: `exclui teams name_team="Nome"`
- Lista: `lista teams`

### Tabela championships
Registra informações sobre campeonatos de futebol.

- Insere: `insere championships name_champ="Nome" prize="Prêmio"`
- Altera: `altera championships name_champ="Nome" new_name="Novo Nome" new_prize="Novo Prêmio"`
- Exclui: `exclui championships name_champ="Nome"`
- Lista: `lista championships`

### Tabela coaches
Armazena dados sobre treinadores de futebol.

- Insere: `insere coaches name_coach="Nome" tactic="Tática" team="Time"`
- Altera: `altera coaches name_coach="Nome" new_name="Novo Nome" new_tactic="Nova Tática" new_team="Novo Time"`
- Exclui: `exclui coaches name_coach="Nome"`
- Lista: `lista coaches`

### Tabela championships_teams
Relaciona times participantes de cada campeonato.

- Insere: `insere championships_teams championship="Nome do Campeonato" team="Nome do Time"`
