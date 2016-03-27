class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :cuisine
      t.decimal :price
      t.string :allergins
      t.text :description
    end
  end
end
