class AddColumnToSolvers < ActiveRecord::Migration[5.1]
  def change
    add_column :solvers, :user_id, :integer
    add_column :solvers, :bug_id, :integer
  end
end
