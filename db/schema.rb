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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120923214418) do

  create_table "carts", :force => true do |t|
    t.float    "totalprice"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "images", :force => true do |t|
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "images_items", :id => false, :force => true do |t|
    t.integer "image_id"
    t.integer "item_id"
  end

  create_table "items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "num_images"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "items", ["cart_id"], :name => "index_items_on_cart_id"
  add_index "items", ["product_id"], :name => "index_items_on_product_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "max_images"
    t.float    "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
