class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :CustomerID
      t.integer :EmployeeID
      t.datetime :OrderDate
      t.datetime :RequiredDate
      t.datetime :ShippedDate
      t.integer :ShipVia
      t.decimal :Freight
      t.text :ShipName
      t.text :ShipAddress
      t.text :ShipCity
      t.text :ShipRegion
      t.text :ShipPostalCode
      t.text :ShipCountry

      t.timestamps null: false
    end
  end
end
