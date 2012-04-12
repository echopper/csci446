class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
