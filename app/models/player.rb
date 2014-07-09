# require 'bcrypt'

class Player < ActiveRecord::Base
	has_many :player_teams
	has_many :teams, through: :player_teams 

	has_many :sport_preferences
	has_many :sports, through: :sport_preferences

  has_secure_password
  # validates_presence_of :password, :on => :create
  



  # def password
  #   @password ||= BCrypt::Password.new(password_digest)
  # end

  # def password=(password)
  #   @password = BCrypt::Password.create(password)
  #   self.password_digest = @password
  # end

  # def self.authenticate(username, password)
  #   player = Player.find_by_username(username)
  #   return player if player && (player.password == password)
  #   nil
  # end
end
