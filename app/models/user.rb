class User < ActiveRecord::Base
  include Concerns::Following 
  has_many :shouts
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

end
