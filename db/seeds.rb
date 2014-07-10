Organization.destroy_all
Sport.destroy_all
Player.destroy_all
PlayerTeam.destroy_all
Team.destroy_all
Game.destroy_all
Location.destroy_all

cs = Organization.create!(name: "Chicago Sports")

bball = Sport.create!(name: "Basketball", division: "Rec", organization: cs)
vball = Sport.create!(name: "Volleyball")

md = Player.create!(first_name: "Matt", last_name: "D", password: "password", password_confirmation: "password", email: "md@email.com", gender: "male", phone_number: "555-555-5555", bio: "Sports are fun for everyone")
ateam = Team.create!(name: "A-team", sport: bball)

js = Player.create!(first_name: "John", last_name: "S", password: "password", password_confirmation: "password", email: "js@email.com", gender: "male", phone_number: "555-555-5555", bio: "I'ma gonna win")
bteam = Team.create!(name: "B-team", sport: bball)

PlayerTeam.create!(player: md, team: ateam, status: "permanent")
PlayerTeam.create!(player: js, team: bteam, status: "permanent")

gp = Location.create!(name: "Grant Park", address: "337 E Randolph St, Chicago, IL 60602")

Game.create!(home_team: ateam, away_team: bteam, location: gp, date: DateTime.now, time: Time.now)
