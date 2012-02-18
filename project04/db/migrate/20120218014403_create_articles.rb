class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author_name
      t.text :body
      t.integer :number_of_edits, :default => 0

      t.timestamps
    end
  end
end
