class AddLogoToStudios < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :logo, :string
  end
end
