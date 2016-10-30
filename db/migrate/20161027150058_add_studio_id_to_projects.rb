class AddStudioIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :studio_id, :integer
  end
end
