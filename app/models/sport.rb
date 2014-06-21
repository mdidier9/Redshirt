class Sport < ActiveRecord::Base
	belongs_to :organization
	has_many :teams
	
end
