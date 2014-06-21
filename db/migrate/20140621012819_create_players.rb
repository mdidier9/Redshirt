class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string 	:first_name
    	t.string 	:last_name
    	t.string 	:password_digest
    	t.string 	:email
    	t.string 	:gender
    	t.integer :phone_number
    	t.text 		:bio

      t.timestamps
    end
  end
end
