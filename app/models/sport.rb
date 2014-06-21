class Sport < ActiveRecord::Base
	belongs_to :organization
	has_many :teams

	has_many :sport_preferences
	has_many :players, through: :sport_preferences
	
end
