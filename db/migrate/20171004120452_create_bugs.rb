class CreateBugs < ActiveRecord::Migration[5.1]
  def change
    create_table :bugs do |t|
      t.string :name
      t.text :description
      t.text :solution

      t.timestamps
    end
  end
end
