class AddDelivertostatusIdToWish < ActiveRecord::Migration
  def change
    add_column :wishes, :delivertostatus_id, :integer
  end
end
