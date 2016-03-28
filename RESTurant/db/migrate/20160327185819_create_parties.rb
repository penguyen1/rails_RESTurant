class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.boolean :paid, default: false
      t.decimal :total, default: 0.0
      t.belongs_to :user
    end
  end
end
