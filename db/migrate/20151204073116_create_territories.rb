class CreateTerritories < ActiveRecord::Migration
  def change
    create_table :territories do |t|
      t.text :TerritoryDescription
      t.integer :RegionID

      t.timestamps null: false
    end
  end
end
