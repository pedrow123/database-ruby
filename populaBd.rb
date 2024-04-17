$:.push'./'
require 'opFutebol.rb'

running = false

while !running
    command = gets

    commandList = command.split(/\s(?=(?:[^"]|"[^"]*")*$)/)

    if commandList[0] == "insere"
        tabela = commandList[1]

        if tabela == "players"
            operacao1 = commandList[2].split("\"")
            operacao2 = commandList[3].split("\"")
            operacao3 = commandList[4].split("\"")
            operacao4 = commandList[5].split("\"")

            if operacao1[0] == "name_player=" && operacao2[0] == "position=" && operacao3[0] == "age=" && operacao4[0] == "team="
                inserePlayer(operacao1[1], operacao2[1], operacao3[1], operacao4[1])
            else
                puts "É necessário inserir as colunas 'name_player', 'position', 'age' e 'team' para inserir um jogador!"
            end

        elsif tabela == "teams"
            operacao1 = commandList[2].split("\"")
            operacao2 = commandList[3].split("\"")
            operacao3 = commandList[4].split("\"")

            if operacao1[0] == "name_team=" && operacao2[0] == "foundation=" && operacao3[0] == "invoicing="
                insereTeam(operacao1[1], operacao2[1], operacao3[1])
            else
                puts "É necessário inserir as colunas 'name_team', 'foundation' e 'invoicing' para inserir um time!"
            end

        elsif tabela == "championships"
            operacao1 = commandList[2].split("\"")
            operacao2 = commandList[3].split("\"")

            if operacao1[0] == "name_champ=" && operacao2[0] == "prize="
                insereChampionship(operacao1[1], operacao2[1])
            else
                puts "É necessário inserir as colunas 'name_champ' e 'prize' para inserir um campeonato!"
            end

        elsif tabela == "coaches"
            operacao1 = commandList[2].split("\"")
            operacao2 = commandList[3].split("\"")
            operacao3 = commandList[4].split("\"")

            if operacao1[0] == "name_coach=" && operacao2[0] == "tactic=" && operacao3[0] == "team="
                insereCoach(operacao1[1], operacao2[1], operacao3[1])
            else
                puts "É necessário inserir as colunas 'name_coach', 'tactic' e 'team' para inserir um treinador!"
            end
        elsif tabela == "championships_teams"
            operacao1 = commandList[2].split("\"")
            operacao2 = commandList[3].split("\"")

            if operacao1[0] == "championship=" && operacao2[0] == "team="
                insereChampionshipTeam(operacao1[1], operacao2[1])
            else
                puts "É necessário inserir as colunas 'championship' e 'team' para inserir um campeonato à um time!"
            end

        else
            puts "Digite uma tabela válida para inserção!"
        end

    elsif commandList[0] == "exclui"
        tabela = commandList[1]

        if tabela == "players"
            operacao1 = commandList[2].split("\"")

            if operacao1[0] == "name_player="
                excluiPlayer(operacao1[1])
            else
                puts "É necessário passar o nome do jogador para exclusão!"
            end

        elsif tabela == "teams"
            operacao1 = commandList[2].split("\"")

            if operacao1[0] == "name_team="
                excluiTeam(operacao1[1])
            else
                puts "É necessário passar o nome do time para exclusão!"
            end

        elsif tabela == "championships"
            operacao1 = commandList[2].split("\"")

            if operacao1[0] == "name_champ="
                excluiChampionship(operacao1[1])
            else
                puts "É necessário passar o nome do campeonato para exclusão!"
            end

        elsif tabela == "coaches"
            operacao1 = commandList[2].split("\"")

            if operacao1[0] == "name_coach="
                excluiCoach(operacao1[1])
            else
                puts "É necessário passar o nome do treinador para exclusão!"
            end

        else
            puts "Digite uma tabela válida para exclusão!"
        end

    elsif commandList[0] == "altera"
        tabela = commandList[1]

        if tabela == "players"
            operacao1 = commandList[2].split("\"")
            operacao2 = commandList[3].split("\"")
            operacao3 = commandList[4].split("\"")
            operacao4 = commandList[5].split("\"")
            operacao5 = commandList[6].split("\"")

            if operacao1[0] == "name_player=" && operacao2[0] == "new_name=" && operacao3[0] == "new_position=" &&  operacao4[0] == "new_age=" && operacao5[0] == "new_team="
                alteraPlayer(operacao1[1], operacao2[1], operacao3[1], operacao4[1], operacao5[1])
            else
                puts "É necessário passar o nome atual, o novo nome, a nova posição, a nova idade e o novo time do jogador para alteração!"
            end

        elsif tabela == "teams"
            operacao1 = commandList[2].split("\"")
            operacao2 = commandList[3].split("\"")
            operacao3 = commandList[4].split("\"")
            operacao4 = commandList[5].split("\"")

            if operacao1[0] == "name_team=" && operacao2[0] == "new_name=" && operacao3[0] == "new_foundation=" && operacao4[0] == "new_invoicing="
                alteraTeam(operacao1[1], operacao2[1], operacao3[1], operacao4[1])
            else
                puts "É necessário passar o nome atual, o novo nome, a nova fundação e o novo faturamento do time para alteração!"
            end

        elsif tabela == "championships"
            operacao1 = commandList[2].split("\"")
            operacao2 = commandList[3].split("\"")
            operacao3 = commandList[4].split("\"")

            if operacao1[0] == "name_champ=" && operacao2[0] == "new_name=" && operacao3[0] == "new_prize="
                alteraChampionship(operacao1[1], operacao2[1], operacao3[1])
            else
                puts "É necessário passar o nome atual, o novo nome e o novo premio do campeonato para alteração!"
            end

        elsif tabela == "coaches"
            operacao1 = commandList[2].split("\"")
            operacao2 = commandList[3].split("\"")
            operacao3 = commandList[4].split("\"")
            operacao4 = commandList[5].split("\"")

            if operacao1[0] == "name_coach=" && operacao2[0] == "new_name=" && operacao3[0] == "new_tactic=" && operacao4[0] == "new_team="
                alteraCoach(operacao1[1], operacao2[1], operacao3[1], operacao4[1])
            else
                puts "É necessário passar o nome atual, o novo nome, a nova tática e o novo time do treinador para alteração!"
            end

        else
            puts "Digite uma tabela válida para alteração!"
        end

    elsif commandList[0] == "lista"
        tabela = commandList[1]

        if tabela == "players"
            listaPlayers()

        elsif tabela == "teams"
            listaTeams()

        elsif tabela == "championships"
            listaChampionships()

        elsif tabela == "coaches"
            listaCoaches()

        else
            puts "Digite uma tabela válida para exclusão!"
        end


    elsif commandList[0] == "exit"
        running = true

    elsif commandList[0] == "clear"
        system("clear")

    else
        puts "Digite um comando válido!"
    end
end
