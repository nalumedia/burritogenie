class CreateBurritolocations < ActiveRecord::Migration
  def change
    create_table :burritolocations do |t|
      t.string :burritolocation_name
      t.text :burritolocation_description
      t.string :burritolocation_address

      t.timestamps
    end
  end
end
