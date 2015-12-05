class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.text :CompanyName
      t.text :ContactName
      t.text :ContactTitle
      t.text :Address
      t.text :City
      t.text :Region
      t.text :PostalCode
      t.text :Country
      t.text :Phone
      t.text :Fax
      t.text :HomePage

      t.timestamps null: false
    end
  end
end
