class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.integer	:home_team_id
    	t.integer	:away_team_id
    	t.integer	:location_id
    	t.integer	:winner_id
    	t.date		:date
    	t.time 		:time

      t.timestamps
    end
  end
end
