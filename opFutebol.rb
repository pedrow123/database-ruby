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

  puts "NOME TIME | FUNDACAO | FATURAMENTO | ID"
  t.each do |e|   
    coa = e.coach
    players_team = e.players
    puts "#{e.name_team} | #{e.foundation} | #{e.invoicing} | #{e.team_id} | #{coa.name_coach}"
    puts "\n"
    puts "Jogadores do #{e.name_team}:"
    players_team.each do |p|
      puts "#{p.name_player}"
      puts "\n"
    end
    puts "\n"
  end
  puts "\n\n"
end

def listaChampionships()
  c = Championship.all
  puts "NOME CAMPEONATO | PRÊMIO | ID"
  c.each do |e|
    puts "#{e.name_champ} | #{e.prize} | #{e.championship_id}"
    puts "\n"
  end
  puts "\n\n"

end

def listaPlayers()
  p = Player.all
  puts "NOME JOGADOR | POSIÇÃO | IDADE | TIME | ID JOGADOR"

  p.each do |e|
    t = e.team
    puts "#{e.name_player} | #{e.position} | #{e.age} | #{t.name_team} | #{e.player_id}"
    puts "\n"
  end
  puts "\n\n"
end

def listaCoaches()
  c = Coach.all
  puts "NOME TREINADOR | TÁTICA | TIME | TREINADOR ID"
  c.each do |e|
    t = e.team
    puts "#{e.name_coach} | #{e.tactic} | #{t.name_team} | #{e.coach_id}"
    puts "\n"
  end
  puts "\n\n"
end

# Função para excluir um time
def excluiTeam(name)
  t = Team.find_by_name_team(name)
  if !t
    puts "Time '#{name}' não encontrado!"
    return
  end
  t.destroy
  puts "Time '#{name}' excluído com sucesso!"
end

# Função para excluir um campeonato
def excluiChampionship(name)
  c = Championship.find_by_name_champ(name)
  if !c
    puts "Campeonato '#{name}' não encontrado!"
    return
  end
  c.destroy
  puts "Campeonato '#{name}' excluído com sucesso!"
  
end

def excluiPlayer(name)
  p = Player.find_by_name_player(name)
  if !p
    puts "Jogador '#{name}' não encontrado!"
    return
  end
  p.destroy
  puts "Jogador '#{name}' excluído com sucesso!"
end

# Função para excluir um treinador
def excluiCoach(name)
  c = Coach.find_by_name_coach(name)
  if !c
    puts "Treinador '#{name}' não encontrado!"
    return
  end
  c.destroy
  puts "Treinador '#{name}' excluído com sucesso!"
end

# Função para alterar dados de um time
def alteraTeam(name, new_name, new_foundation, new_invoicing)
  t = Team.find_by_name_team(name)
  if !t
    puts "Time '#{name}' não encontrado!"
    return
  end
  t.name_team = new_name
  t.foundation = new_foundation
  t.invoicing = new_invoicing
  t.save
  puts "Dados do time '#{name}' alterados com sucesso!"

  end
end

def alteraPlayer(name, new_name, new_position, new_age, new_team)
  p = Player.find_by_name_player(name)
  if !p
    puts "Jogador '#{name}' não encontrado!"
    return
  end
  t = Team.find_by_name_team(new_team)
  if !t
    puts "Time '#{new_team}' não encontrado!"
    return
  end
  p.name_player = new_name
  p.position = new_position
  p.age = new_age
  p.team = t
  p.save
  puts "Dados do jogador '#{name}' alterados com sucesso!"

end

def alteraCoach(name, new_name, new_tactic, new_team)
  c = Coach.find_by_name_coach(name)
  if !c
    puts "Treinador '#{name}' não encontrado!"
    return
  end
  t = Team.find_by_name_team(new_team)
  if !t
    puts "Time '#{new_team}' não encontrado!"
    return
  end
  c.name_coach = new_name
  c.tactic = new_tactic
  c.team = t
  c.save
  puts "Dados do treinador '#{name}' alterados com sucesso!"
  
end

# Função para alterar dados de um campeonato
def alteraChampionship(name, new_name, new_prize)
  c = Championship.find_by_name_champ(name)
  if !c
    puts "Campeonato '#{name}' não encontrado!"
    return
  end
  c.name_champ = new_name
  c.prize = new_prize
  c.save
  puts "Dados do campeonato '#{name}' alterados com sucesso!"
  
end