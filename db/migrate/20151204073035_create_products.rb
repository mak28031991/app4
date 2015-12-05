class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :ProductName
      t.integer :SupplierID
      t.integer :CategoryID
      t.text :QuantityPerUnit
      t.decimal :UnitPrice
      t.integer :UnitsInStock
      t.integer :UnitsOnOrder
      t.integer :ReorderLevel
      t.text :Discontinued

      t.timestamps null: false
    end
  end
end
