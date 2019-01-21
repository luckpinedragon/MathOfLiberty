class CreateSeekings < ActiveRecord::Migration[5.2]
  def change
    create_table :seekings do |t|
      t.references :question, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
      t.index [:question_id, :tag_id], unique: true
    end
  end
end
