class CreateDelivertostatuses < ActiveRecord::Migration
  def change
    create_table :delivertostatuses do |t|
      t.string :delivertostatus_name
      t.text :deliverttostatus_definition

      t.timestamps
    end
  end
end
