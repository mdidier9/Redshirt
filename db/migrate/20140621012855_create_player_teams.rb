class CreatePlayerTeams < ActiveRecord::Migration
  def change
    create_table :player_teams do |t|

      t.timestamps
    end
  end
end
