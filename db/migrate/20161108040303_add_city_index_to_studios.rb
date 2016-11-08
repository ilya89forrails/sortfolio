class AddCityIndexToStudios < ActiveRecord::Migration[5.0]
  def change
  	add_index :studios, :city
  end
end
