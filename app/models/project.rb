class Project < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships
  has_many :bugs

  validates :name, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 100 }

  validates :description, presence: true, length: { minimum: 3, maximum: 255 }
  self.per_page = 3
end
