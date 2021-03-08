class ChangeCharactersAttributes < ActiveRecord::Migration[6.1]
  def change
    change_table :characters do |t|
    t.remove :achievement, :stat, :race

    t.integer :achievement_id, foreign_key: true
    t.integer :stat_id, foreign_key: true
    t.integer :race_id, foreign_key: true
    end
  end
end
