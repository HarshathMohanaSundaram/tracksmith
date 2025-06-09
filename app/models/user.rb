class User < ApplicationRecord
  has_many :topics, dependent: :destroy

  validates_presence_of :name, :email, :password_digest
  validates :email, uniqueness: true
  validates :name, length: { minimum: 3, maximum: 50 }
end
