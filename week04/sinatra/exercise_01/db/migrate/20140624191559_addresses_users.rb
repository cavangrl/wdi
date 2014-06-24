class AddressesUsers < ActiveRecord::Migration
  def change
  	create_join_table :addresses, :users
  end
end
