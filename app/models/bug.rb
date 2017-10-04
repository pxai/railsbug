class Bug < ApplicationRecord
  belongs_to :project
  has_many :solvers
  has_many :users, through: :solvers
end
