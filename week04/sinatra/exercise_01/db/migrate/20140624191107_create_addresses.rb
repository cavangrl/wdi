class CreateAddresses < ActiveRecord::Migration
  def change
  	create_table :addresses do |t|
  		t.string :street
  		t.string :state
  		t.string :zipcode
  	end
  end
end
