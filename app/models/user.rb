class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true, length: { minimum: 2, maximum: 32 },
    format: { with: /\A[0-9a-zA-Z]+([-._]?[0-9a-zA-Z]+)*\Z/}, uniqueness: { case_sensitive: false }
  # actually pasword from has_secure_password has a 72 character limit anyway, but w/e
  validates :password, presence: true, length: { minimum: 6, maximum: 72 }
end