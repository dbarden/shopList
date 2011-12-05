class CreateItemsLists < ActiveRecord::Migration
  def change
    create_table :items_lists do |t|
      t.integer :list_id
      t.integer :item_id
      t.float :buy_price
      t.boolean :bought
      t.integer :quantity

      t.timestamps
    end
  end
end
