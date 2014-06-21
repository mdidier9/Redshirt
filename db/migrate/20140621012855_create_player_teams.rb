class CreatePlayerTeams < ActiveRecord::Migration
  def change
    create_table :player_teams do |t|
    	t.integer :player_id
    	t.integer :team_id
    	t.string 	:status #primary or replacement/fill-in

      t.timestamps
    end
  end
end
