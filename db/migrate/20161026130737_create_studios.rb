class CreateStudios < ActiveRecord::Migration[5.0]
  def change
    create_table :studios do |t|
      t.string   :name
      t.string   :city
      t.integer   :min_budget
      t.integer   :max_budget
      t.boolean :payed
      t.text :description
      t.timestamps
    end
  end
end
