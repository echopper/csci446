class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :games_count, default: 0

      t.timestamps
    end
  end
end
