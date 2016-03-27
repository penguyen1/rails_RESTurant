class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.decimal :total, null: false, default: 0.0
      t.belongs_to :party
    end
  end
end
