class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :tableNum
      t.integer :guests
      t.boolean :paid
      t.decimal :total
      t.belongs_to :user
    end
  end
end
