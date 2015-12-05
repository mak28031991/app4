class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
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

      t.timestamps null: false
    end
  end
end
