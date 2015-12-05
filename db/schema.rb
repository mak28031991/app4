# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151204073116) do

  create_table "categories", force: :cascade do |t|
    t.text     "CategoryName"
    t.text     "Description"
    t.binary   "Picture"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "customer_customer_demos", force: :cascade do |t|
    t.text     "CustomerID"
    t.text     "CustomerTypeID"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "customer_demographics", force: :cascade do |t|
    t.text     "CustomerDesc"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "customers", force: :cascade do |t|
    t.text     "CompanyName"
    t.text     "ContactName"
    t.text     "ContactTitle"
    t.text     "Address"
    t.text     "City"
    t.text     "Region"
    t.text     "PostalCode"
    t.text     "Country"
    t.text     "Phone"
    t.text     "Fax"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "employee_territories", force: :cascade do |t|
    t.integer  "EmployeeID"
    t.text     "TerritoryID"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.text     "LastName"
    t.text     "FirstName"
    t.text     "Title"
    t.text     "TitleOfCourtesy"
    t.date     "BirthDate"
    t.date     "HireDate"
    t.text     "Address"
    t.text     "City"
    t.text     "Region"
    t.text     "PostalCode"
    t.text     "Country"
    t.text     "HomePhone"
    t.text     "Extension"
    t.binary   "Photo"
    t.text     "Notes"
    t.integer  "ReportsTo"
    t.text     "PhotoPath"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "orders", force: :cascade do |t|
    t.text     "CustomerID"
    t.integer  "EmployeeID"
    t.datetime "OrderDate"
    t.datetime "RequiredDate"
    t.datetime "ShippedDate"
    t.integer  "ShipVia"
    t.decimal  "Freight"
    t.text     "ShipName"
    t.text     "ShipAddress"
    t.text     "ShipCity"
    t.text     "ShipRegion"
    t.text     "ShipPostalCode"
    t.text     "ShipCountry"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "products", force: :cascade do |t|
    t.text     "ProductName"
    t.integer  "SupplierID"
    t.integer  "CategoryID"
    t.text     "QuantityPerUnit"
    t.decimal  "UnitPrice"
    t.integer  "UnitsInStock"
    t.integer  "UnitsOnOrder"
    t.integer  "ReorderLevel"
    t.text     "Discontinued"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "regions", force: :cascade do |t|
    t.text     "RegionDescription"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "shippers", force: :cascade do |t|
    t.text     "CompanyName"
    t.text     "Phone"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.text     "CompanyName"
    t.text     "ContactName"
    t.text     "ContactTitle"
    t.text     "Address"
    t.text     "City"
    t.text     "Region"
    t.text     "PostalCode"
    t.text     "Country"
    t.text     "Phone"
    t.text     "Fax"
    t.text     "HomePage"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "territories", force: :cascade do |t|
    t.text     "TerritoryDescription"
    t.integer  "RegionID"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
