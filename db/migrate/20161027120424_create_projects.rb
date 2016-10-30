class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :industry
      t.string :platform
      t.string :project_type
      t.string :technology

      t.timestamps
    end
  end
end
