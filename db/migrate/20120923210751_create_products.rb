class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :max_images
      t.float :price

      t.timestamps
    end
  end
end
