class CreateSearchings < ActiveRecord::Migration[5.2]
  def change
    create_table :searchings do |t|
      t.references :topic, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
      t.index [:topic_id, :tag_id], unique: true
    end
  end
end
