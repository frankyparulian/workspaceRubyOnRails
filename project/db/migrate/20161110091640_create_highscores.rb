class CreateHighscores < ActiveRecord::Migration
  def change
    create_table :highscores do |t|
      t.string :game
      t.integer :score

      t.timestamps null: false
    end
  end
end
