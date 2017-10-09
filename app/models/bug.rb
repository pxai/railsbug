class Bug < ApplicationRecord
  belongs_to :project
  has_many :solvers
  has_many :users, through: :solvers

  validates :name, presence: true,
            length: { minimum: 3, maximum: 100 }
  validates :description, presence: true, length: { minimum: 2 }
end
