class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :tableNum
      t.integer :guests, null: false, default: 0
      t.boolean :paid, null: false, default: false
      t.decimal :total, null: false, default: 0.0
      t.belongs_to :user
    end
  end
end
