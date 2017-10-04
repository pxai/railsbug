class CreateSolvers < ActiveRecord::Migration[5.1]
  def change
    create_table :solvers do |t|

      t.timestamps
    end
  end
end
