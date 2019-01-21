class CreateProgressions < ActiveRecord::Migration[5.2]
  def change
    create_table :progressions do |t|
      t.references :user, foreign_key: true
      t.references :topic, foreign_key: true
      t.text :memo
      t.integer :evaluation, default: 0
      t.integer :complete, default: 0
      t.boolean :display, default: true

      t.timestamps
      t.index [:user_id, :topic_id], unique: true
    end
  end
end
