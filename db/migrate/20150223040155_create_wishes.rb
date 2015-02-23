class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :wish_address
      t.string :wish_phone
      t.string :wish_zip
      t.text :wish_instructions

      t.timestamps
    end
  end
end
