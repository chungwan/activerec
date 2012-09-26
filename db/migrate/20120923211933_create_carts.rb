class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.float :totalprice

      t.timestamps
    end
  end
end
