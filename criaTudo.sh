#!/bin/bash
rm -f Futebol.sqlite3
echo -n "createTeams ..."
ruby create/createTeams.rb
echo "Ok"
echo -n "createChampionships ..."
ruby create/createChampionships.rb
echo "Ok"
echo -n "createPlayers ..."
ruby create/createPlayers.rb
echo "Ok"
echo -n "createCoaches..."
ruby create/createCoaches.rb
echo "Ok"
echo -n "createChampionshipTeam ..."
ruby create/createChampionshipTeam.rb
echo "Ok"
