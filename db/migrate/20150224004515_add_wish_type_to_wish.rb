class AddWishTypeToWish < ActiveRecord::Migration
  def change
    add_column :wishes, :wish_type, :string
  end
end
