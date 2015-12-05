class CreateCustomerDemographics < ActiveRecord::Migration
  def change
    create_table :customer_demographics do |t|
      t.text :CustomerDesc

      t.timestamps null: false
    end
  end
end
