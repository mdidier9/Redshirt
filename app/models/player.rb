class Player < ActiveRecord::Base
	has_many :player_teams
	has_many :teams, through: :player_teams 

	has_many :sport_preferences
	has_many :sports, through: :sport_preferences

  has_secure_password
end
