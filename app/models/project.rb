class Project < ApplicationRecord
  validates :name, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 100 }

  validates :description, presence: true, length: { minimum: 3, maximum: 255 }
end
