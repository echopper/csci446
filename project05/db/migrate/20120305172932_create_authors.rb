class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, unique: true, null: false

      t.timestamps
    end
  end
end
