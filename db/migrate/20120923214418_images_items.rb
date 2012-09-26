class ImagesItems < ActiveRecord::Migration
  def change
    create_table :images_items, :id => false do |t|
      t.integer :image_id
      t.integer :item_id
    end
  end
end

