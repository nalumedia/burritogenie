class AddDelivertouuidToDeliverto < ActiveRecord::Migration
  def change
    add_column :delivertos, :deliverto_uuid, :string
  end
end
