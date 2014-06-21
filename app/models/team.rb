class Team < ActiveRecord::Base
	has_many :player_teams
	has_many :players, through: :player_teams

	has_many :home_games, class_name: "Game", foreign_key: :home_team_id
	has_many :away_games, class_name: "Game", foreign_key: :away_team_id
	has_many :wins, class_name: "Game", foreign_key: :winner_id

	belongs_to :sport

end
