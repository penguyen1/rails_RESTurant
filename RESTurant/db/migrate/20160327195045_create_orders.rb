class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :food, index: true
      t.integer :quantity, default: 1
      t.decimal :total, default: 0.0
    end
  end
end
