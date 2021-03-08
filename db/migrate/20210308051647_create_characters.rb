class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :class
      t.string :image
      # t.object :stats
      t.string :history
      # t.object :achieve
      t.integer :level

      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
