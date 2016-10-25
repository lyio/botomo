class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.string :author
      t.string :year
      t.integer :down_votes
      t.integer :up_votes

      t.timestamps null: false
    end
  end
end
