class User < ApplicationRecord
  belongs_to :booking

  validates :username, presence: true
  validates :email, presence: true
end
