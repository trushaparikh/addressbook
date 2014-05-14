class AddUserIdAndCountryIdToAddresslists < ActiveRecord::Migration
  def change
    add_column :addresslists, :user_id, :integer
    add_column :addresslists, :country_id, :integer
  end
end
