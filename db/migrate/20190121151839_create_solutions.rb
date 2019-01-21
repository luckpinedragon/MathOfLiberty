class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.references :answer, foreign_key: true
      t.integer :box
      t.integer :value

      t.timestamps
    end
  end
end
