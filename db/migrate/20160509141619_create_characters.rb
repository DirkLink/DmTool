class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.belongs_to :player
      t.integer :level
      t.integer :strength
      t.integer :constitution
      t.integer :dexterity
      t.integer :wisdom
      t.integer :intelligence
      t.integer :charisma
      t.integer :armor_class
      t.string :class
      t.string :name
      t.string :race
      t.string :gender
      t.timestamps
    end
  end
end
