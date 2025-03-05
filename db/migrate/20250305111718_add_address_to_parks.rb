class AddAddressToParks < ActiveRecord::Migration[7.1]
  def change
    add_column :parks, :address, :string
  end
end
