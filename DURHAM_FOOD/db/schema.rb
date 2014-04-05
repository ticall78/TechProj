# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 4) do

  create_table "categories", :force => true do |t|
    t.string   "dairy"
    t.string   "vegetables"
    t.string   "fruits"
    t.string   "meat"
    t.string   "others"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", :force => true do |t|
    t.integer  "itemID"
    t.string   "itemName"
    t.string   "category"
    t.string   "itemSize"
    t.integer  "supplier"
    t.string   "description"
    t.date     "purchasesDate"
    t.decimal  "purchasePrice",                :precision => 4, :scale => 2
    t.integer  "quantityOnHand"
    t.integer  "reorderLimit",   :limit => 99
    t.decimal  "salesPrice",                   :precision => 4, :scale => 2
    t.string   "status"
    t.integer  "category_id"
    t.integer  "supplier_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.integer  "statusId"
    t.string   "statusDescription"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.integer  "supplierID"
    t.string   "supplierName"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
