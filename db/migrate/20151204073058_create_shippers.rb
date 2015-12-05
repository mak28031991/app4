class CreateShippers < ActiveRecord::Migration
  def change
    create_table :shippers do |t|
      t.text :CompanyName
      t.text :Phone

      t.timestamps null: false
    end
  end
end
