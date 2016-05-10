class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :weight
      t.integer :ac
      t.string :text
      t.timestamps
    end
  end
end
