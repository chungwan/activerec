class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :product
      t.references :cart
      t.integer :num_images

      t.timestamps
    end
    add_index :items, :product_id
    add_index :items, :cart_id
  end
end

