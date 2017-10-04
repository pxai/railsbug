class AddColumnToShowtime < ActiveRecord::Migration[5.1]
  def change
    add_column :memberships, :user_id, :integer
    add_column :memberships, :project_id, :integer
  end
end
