class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :content
      t.integer :genre
      t.integer :chapter
      t.integer :review
      t.string :interpretation

      t.timestamps
    end
  end
end
