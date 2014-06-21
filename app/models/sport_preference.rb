class SportPreference < ActiveRecord::Base
	belongs_to :player
	belongs_to :sport

end
