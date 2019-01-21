class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.integer :score, default: 0
      t.integer :success, default: 0
      t.integer :failure, default: 0
      t.boolean :visualize, default: true

      t.timestamps
      t.index [:user_id, :question_id], unique: true
    end
  end
end
