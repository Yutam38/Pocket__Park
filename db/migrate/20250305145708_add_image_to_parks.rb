class AddImageToParks < ActiveRecord::Migration[7.1]
  def change
    add_column :parks, :image, :string
  end
end
