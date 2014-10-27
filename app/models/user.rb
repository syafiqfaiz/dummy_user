class User < ActiveRecord::Base
  # Remember to create a migration!

  validates :name, :email, :password, presence: true
  validates :email, confirmation: true, uniqueness: { case_sensitive: false }
  validates :password, confirmation: true


end
