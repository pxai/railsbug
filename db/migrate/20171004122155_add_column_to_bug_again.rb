class AddColumnToBugAgain < ActiveRecord::Migration[5.1]
  def change
    remove_column :bugs, :id_project, :integer
    add_column :bugs, :project_id, :integer
  end
end
