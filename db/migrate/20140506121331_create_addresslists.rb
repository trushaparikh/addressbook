class CreateAddresslists < ActiveRecord::Migration
  def change
    create_table :addresslists do |t|
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :country
      t.string :phone

      t.timestamps
    end
  end
end
