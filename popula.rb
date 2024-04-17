# -*- coding: utf-8 -*-
$:.push './'
# require 'models/team.rb'
# require 'models/championship.rb'
# require 'models/player.rb'
# require 'models/coach.rb'
require 'opFutebol.rb'

# ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'Futebol.sqlite3')

# insereTeam("Athletico", "1924", "75M")
# insereChampionship("Copa do Brasil", "20M")
# insereCoach("Mourinho", "4-4-2", "Athletico")
# inserePlayer("Fernandinho", "Meio-campo", "39", "Athletico")
# inserePlayer("Canobbio", "Atacante", "23", "Athletico")

# insereTeam("Coritiba", "1909", "30M")
# insereCoach("Mourinho", "4-4-2", "Coritiba")

# insereChampionshipTeam("Copa do Brasil", "Athletico")
# insereCoach("Guto Ferreira", "4-4-3", "Coritiba")
# insereChampionship("Libertadores", "100M")
# insereChampionshipTeam("Libertadores", "Athletico")
# insereChampionshipTeam("Copa do Brasil", "Coritiba")
# # listaTeams()
# listaChampionships()
# inserePlayer("Robson", "Atacante", "30", "Coritiba")
# listaCoaches()

# excluiCoach("Mourinho")
listaCoaches()
# insereCoach("Guardiola", "4-4-2", "Athletico")
# excluiPlayer("Robson")
# excluiPlayer("Cuello")
# excluiTeam("Athletico")
# excluiCoach("Guto Ferreira")
listaTeams()
# listaChampionships()


# Criando instâncias dos modelos
# flamengo = Team.new()
# flamengo.name_team = 'Flamengo'
# flamengo.foundation = '1895-11-17'
# flamengo.invoicing = '1000000'
# flamengo.save

# corinthians = Team.new
# corinthians.name_team = 'Corinthians'
# corinthians.foundation = '1910-09-01'
# corinthians.invoicing = '900000'
# corinthians.save

# gremio = Team.new
# gremio.name_team = 'Gremio'
# gremio.foundation = '1915-09-01'
# gremio.invoicing = '900000'
# gremio.save

# brasileirao = Championship.new
# brasileirao.name_champ = 'Brasileirão'
# brasileirao.prize = '10000000'
# brasileirao.save

# copa_brasil = Championship.new
# copa_brasil.name_champ = 'Copa do Brasil'
# copa_brasil.prize = '5000000'
# copa_brasil.save

# copa_brasil = Championship.new
# copa_brasil.name_champ = 'Libertadores'
# copa_brasil.prize = '100M'
# copa_brasil.save

# gabigol = Player.new
# gabigol.name_player = 'Gabigol'
# gabigol.position = 'Atacante'
# gabigol.age = 25
# gabigol.team = flamengo
# gabigol.save

# cassio = Player.new
# cassio.name_player = 'Cássio'
# cassio.position = 'Goleiro'
# cassio.age = 34
# cassio.team = corinthians
# cassio.save

# renato_gaucho = Coach.new
# renato_gaucho.name_coach = 'Renato Gaúcho'
# renato_gaucho.tactic = 'Ofensiva'
# renato_gaucho.team = flamengo
# renato_gaucho.save

# sylvinho = Coach.new
# sylvinho.name_coach = 'Sylvinho'
# sylvinho.tactic = 'Defensiva'
# sylvinho.team = corinthians
# sylvinho.save

# team1 = Team.find_by_name_team("Flamengo")
# championships = Championship.all
# championships.each do |championship|
#     championship.teams << team1
# end

# championship1 = Championship.find_by_name_champ("Copa do Brasil")
# teams = Team.all
# teams.each do |team|
#     team.championships << championship1
# end
