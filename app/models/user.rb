class User < ActiveRecord::Base
  has_many :memberships
  has_many :projects, through: :memberships
  has_many :solvers
  has_many :bugs, through: :solvers

  validates :username, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }

  has_secure_password

end
