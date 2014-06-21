class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
    	t.string 	:name
    	t.string 	:division
    	t.integer :organization_id

      t.timestamps
    end
  end
end
