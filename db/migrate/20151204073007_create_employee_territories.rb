class CreateEmployeeTerritories < ActiveRecord::Migration
  def change
    create_table :employee_territories do |t|
      t.integer :EmployeeID
      t.text :TerritoryID

      t.timestamps null: false
    end
  end
end
