# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
FootballPlayer.delete_all
FantasyLeague.delete_all
FantasyTeam.delete_all
FantasyTeamPlayer.delete_all


u1 = User.create!(email: "graeme@graeme.com", username:"gstewart", password: "password")
u2 = User.create!(email: "aroy@aroy.com", username:"aroy", password: "password")
u3 = User.create!(email: "chrissy@chrissy.com", username:"chrissy", password: "password")
u4 = User.create!(email: "mcfly@mcfly.com", username:"mcfly", password: "password")

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
fp21 = FootballPlayer.create!(name: "Liam Fontaine", club: "Hibernian", position: "Defender")
fp22 = FootballPlayer.create!(name: "Liam Henderson", club: "Hibernian", position: "Attacker")
fp23 = FootballPlayer.create!(name: "Jason Cummings", club: "Hibernian", position: "Attacker")
fp24 = FootballPlayer.create!(name: "Paul Hanlon", club: "Hibernian", position: "Defender")
fp25 = FootballPlayer.create!(name: "Craig Gordon", club: "Celtic", position: "Goalkeeper")
fp26 = FootballPlayer.create!(name: "Gianluigi Buffon", club: "Juventus", position: "Goalkeeper")
fp27 = FootballPlayer.create!(name: "Fernando Muslera", club: "Galatasaray", position: "Goalkeeper")
fp28 = FootballPlayer.create!(name: "Joe Hart", club: "Man City", position: "Goalkeeper")
fp29 = FootballPlayer.create!(name: "Hugo Lloris", club: "Tottenham", position: "Goalkeeper")
fp30 = FootballPlayer.create!(name: "Stéphane Ruffier", club: "Saint-Ettiene", position: "Goalkeeper")
fp31 = FootballPlayer.create!(name: "Samir Handanović", club: "Inter", position: "Goalkeeper")
fp32 = FootballPlayer.create!(name: "Mattia Perin", club: "Genoa", position: "Goalkeeper")
fp33 = FootballPlayer.create!(name: "Bernd Leno", club: "Bayer Leverkusen", position: "Goalkeeper")
fp34 = FootballPlayer.create!(name: "Claudio Bravo", club: "Barcelona", position: "Goalkeeper")
fp35 = FootballPlayer.create!(name: "Igor Akinfeev", club: "CSKA Moscow", position: "Goalkeeper")
fp36 = FootballPlayer.create!(name: "Marquinhos", club: "PSG", position: "Defender")
fp37 = FootballPlayer.create!(name: "Nemaja Vidic", club: "Inter", position: "Defender")
fp38 = FootballPlayer.create!(name: "Pepe", club: "Real Madrid", position: "Defender")
fp39 = FootballPlayer.create!(name: "Mamadou Sakho", club: "Liverpool", position: "Defender")
fp40 = FootballPlayer.create!(name: "Laurent Koscielny", club: "Arsenal", position: "Defender")
fp41 = FootballPlayer.create!(name: "Jan Vertonghen", club: "Tottenham", position: "Defender")
fp42 = FootballPlayer.create!(name: "David Luiz", club: "PSG", position: "Defender")
fp43 = FootballPlayer.create!(name: "Andrea Barzagli", club: "Juventus", position: "Defender")
fp44 = FootballPlayer.create!(name: "Gerard Pique", club: "Liverpool", position: "Defender")
fp45 = FootballPlayer.create!(name: "Gary Cahill", club: "Chelsea", position: "Defender")
fp46 = FootballPlayer.create!(name: "Branislav Ivanovic", club: "Chelsea", position: "Defender")
fp47 = FootballPlayer.create!(name: "Mehdi Benatia", club: "Roma", position: "Defender")
fp48 = FootballPlayer.create!(name: "Neven Subotic", club: "Dortmund", position: "Defender")
fp49 = FootballPlayer.create!(name: "Mats Hummels", club: "Dortmund", position: "Defender")
fp50 = FootballPlayer.create!(name: "Thiago Silva", club: "PSG", position: "Defender")
fp51 = FootballPlayer.create!(name: "Xabi Alonso", club: "Bayern Munich", position: "Attacker")
fp52 = FootballPlayer.create!(name: "Toni Kroos", club: "Real Madrid", position: "Attacker")
fp53 = FootballPlayer.create!(name: "Arturo Vidal", club: "Bayern Munich", position: "Attacker")
fp54 = FootballPlayer.create!(name: "Cesc Fabregas", club: "Chelsea", position: "Attacker")
fp55 = FootballPlayer.create!(name: "Luka Modric", club: "Tottenham", position: "Attacker")
fp56 = FootballPlayer.create!(name: "Branislav Ivanovic", club: "Chelsea", position: "Attacker")
fp57 = FootballPlayer.create!(name: "Yaya Toure", club: "Man City", position: "Attacker")
fp58 = FootballPlayer.create!(name: "Bastian Schweinsteiger", club: "Man Utd", position: "Attacker")
fp59 = FootballPlayer.create!(name: "Andres Iniesta", club: "Barcelona", position: "Attacker")
fp60 = FootballPlayer.create!(name: "Mesut Ozil", club: "Arsenal", position: "Attacker")



fl1 = FantasyLeague.create!(name: "SPL")


ft1 = FantasyTeam.create!(name: "Alloa Athletic", fantasy_league: fl1, user: u1)
ft2 = FantasyTeam.create!(name: "Celtic", fantasy_league: fl1, user: u2)
ft3 = FantasyTeam.create!(name: "Hibs", fantasy_league: fl1, user: u3)
ft4 = FantasyTeam.create!(name: "Hearts", fantasy_league: fl1, user: u4)
