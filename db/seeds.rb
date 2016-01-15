# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
u1 = User.create!(email: "graeme@graeme.com", username:"gstewart", password: "password")
u2 = User.create!(email: "aroy@aroy.com", username:"aroy", password: "password")
u3 = User.create!(email: "chrissy@chrissy.com", username:"chrissy", password: "password")
u4 = User.create!(email: "mcfly@mcfly.com", username:"mcfly", password: "password")

FootballPlayer.delete_all
fp1 = FootballPlayer.create!(name: "Lionel Messi", club: "Barcelona", position: "Attacker")
fp2 = FootballPlayer.create!(name: "Cristiano Ronaldo", club: "Real Madrid", position: "Attacker")
fp3 = FootballPlayer.create!(name: "Neymar", club: "Barcelona", position: "Attacker")
fp4 = FootballPlayer.create!(name: "Robert Lewandowski", club: "Bayern Munich", position: "Attacker")
fp5 = FootballPlayer.create!(name: "Luis Suarez", club: "Barcelona", position: "Attacker")
fp6 = FootballPlayer.create!(name: "Thomas Muller", club: "Bayern Munich", position: "Attacker")
fp7 = FootballPlayer.create!(name: "Gareth Bale", club: "Real Madrid", position: "Attacker")
fp8 = FootballPlayer.create!(name: "Sergio Aguero", club: "Man City", position: "Attacker")
fp9 = FootballPlayer.create!(name: "Raphael Varane", club: "Real Madrid", position: "Defender")
fp10 = FootballPlayer.create!(name: "Giorgio Chiellini", club: "Juventus", position: "Defender")
fp11 = FootballPlayer.create!(name: "David Alaba", club: "Bayern Munich", position: "Defender")
fp12 = FootballPlayer.create!(name: "Diego Godin", club: "Atletico Madrid", position: "Defender")
fp13 = FootballPlayer.create!(name: "Philipp Lahm", club: "Bayern Munich", position: "Defender")
fp14 = FootballPlayer.create!(name: "Jerome Boateng", club: "Bayern Munich", position: "Defender")
fp15 = FootballPlayer.create!(name: "Gerard Pique", club: "Barcelona", position: "Defender")
fp16 = FootballPlayer.create!(name: "Sergio Ramos", club: "Real Madrid", position: "Defender")
fp17 = FootballPlayer.create!(name: "Manuel Neuer", club: "Bayern Munich", position: "Goalkeeper")
fp18 = FootballPlayer.create!(name: "Thibaut Courtois", club: "Chelsea", position: "Goalkeeper")
fp19 = FootballPlayer.create!(name: "David De Gea", club: "Man Utd", position: "Goalkeeper")
fp20 = FootballPlayer.create!(name: "Petr Cech", club: "Arsenal", position: "Goalkeeper")

FantasyLeague.delete_all
fl1 = FantasyLeague.create!(name: "SPL")

FantasyTeam.delete_all
ft1 = FantasyTeam.create!(name: "Rangers", fantasy_league: fl1, user: u1)
ft2 = FantasyTeam.create!(name: "Celtic", fantasy_league: fl1, user: u2)
ft3 = FantasyTeam.create!(name: "Hibs", fantasy_league: fl1, user: u3)
ft4 = FantasyTeam.create!(name: "Hearts", fantasy_league: fl1, user: u4)

FantasyTeamPlayer.delete_all
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp1, fantasy_team: ft1)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp2, fantasy_team: ft1)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp3, fantasy_team: ft2)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp4, fantasy_team: ft2)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp5, fantasy_team: ft3)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp6, fantasy_team: ft3)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp7, fantasy_team: ft4)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp8, fantasy_team: ft4)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp9, fantasy_team: ft1)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp10, fantasy_team: ft1)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp11, fantasy_team: ft2)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp12, fantasy_team: ft2)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp13, fantasy_team: ft3)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp14, fantasy_team: ft3)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp15, fantasy_team: ft4)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp16, fantasy_team: ft4)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp17, fantasy_team: ft1)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp18, fantasy_team: ft2)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp19, fantasy_team: ft3)
FantasyTeamPlayer.create!(active: true, first_team: true, football_player: fp20, fantasy_team: ft4)
