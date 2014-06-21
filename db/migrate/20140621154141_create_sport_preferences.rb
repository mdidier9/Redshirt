class CreateSportPreferences < ActiveRecord::Migration
  def change
    create_table :sport_preferences do |t|
    	t.integer :player_id
    	t.integer :sport_id

      t.timestamps
    end
  end
end
