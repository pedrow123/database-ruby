$:.push 'models/'
require 'team.rb'
require 'championship.rb'
require 'player.rb'
require 'coach.rb'

def insereTeam (name, f, i)

  a = Team.new({:name_team => name, :foundation => f, :invoicing => i})
  a.save
end

def insereChampionship(name, p)

  a = Championship.new({:name_champ => name, :prize => p})
  a.save
end

def inserePlayer(name, position_player, age_player, team_player)
  t = Team.find_by_name_team(team_player)
  if !t
    puts "Deve inserir jogador em um clube que já existe"
    return
  end

  a = Player.new({:name_player => name, :position => position_player, :age => age_player, :team => t})
  a.save
end

def insereCoach(name, tatic_coach, team_coach)

  t = Team.find_by_name_team(team_coach)
  if !t
    puts "Deve inserir treinador em um clube que já existe"
    return
  end
  c = Coach.find_by_name_coach(name)
  if c
    puts "O treinador já está em outra equipe"
    return
  end
  a = Coach.new({:name_coach => name, :tactic => tatic_coach, :team => t})
  a.save
end

def insereChampionshipTeam(name_c, name_t)
  nc = Championship.find_by_name_champ(name_c)
  nt = Team.find_by_name_team(name_t)
  if !nc || !nt
    puts "É necessário passar nomes de campeonatos e de times que já existem"
    return
  end
  nc.teams << nt
end

def listaTeams()
  t = Team.all
  puts "TIME | FUNDACAO | INVOICING"
end
