class AddPhoneToBurritolocation < ActiveRecord::Migration
  def change
    add_column :burritolocations, :burritolocation_phone, :string
    add_column :burritolocations, :burritolocation_url, :string
  end
end
