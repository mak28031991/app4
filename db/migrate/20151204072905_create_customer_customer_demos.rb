class CreateCustomerCustomerDemos < ActiveRecord::Migration
  def change
    create_table :customer_customer_demos do |t|
      t.text :CustomerID
      t.text :CustomerTypeID

      t.timestamps null: false
    end
  end
end
