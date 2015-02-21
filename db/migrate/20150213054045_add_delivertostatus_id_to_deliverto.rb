class AddDelivertostatusIdToDeliverto < ActiveRecord::Migration
  def change
    add_column :delivertos, :delivertostatus_id, :integer
  end
end
