class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :topic, foreign_key: true
      t.string :theme
      t.text :problem
      t.integer :level
      t.integer :trial
      t.string :explanation

      t.timestamps
    end
  end
end
