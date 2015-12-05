class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :CategoryName
      t.text :Description
      t.binary :Picture

      t.timestamps null: false
    end
  end
end
