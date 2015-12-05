class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.text :LastName
      t.text :FirstName
      t.text :Title
      t.text :TitleOfCourtesy
      t.date :BirthDate
      t.date :HireDate
      t.text :Address
      t.text :City
      t.text :Region
      t.text :PostalCode
      t.text :Country
      t.text :HomePhone
      t.text :Extension
      t.binary :Photo
      t.text :Notes
      t.integer :ReportsTo
      t.text :PhotoPath

      t.timestamps null: false
    end
  end
end
