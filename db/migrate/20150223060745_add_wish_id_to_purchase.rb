class AddWishIdToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :wish_id, :integer
  end
end
