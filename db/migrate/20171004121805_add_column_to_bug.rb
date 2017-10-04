class AddColumnToBug < ActiveRecord::Migration[5.1]
  def change
    add_column :bugs, :id_project, :integer
  end
end
