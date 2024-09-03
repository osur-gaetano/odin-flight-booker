class User < ApplicationRecord
  belongs_to :booking

  validates_presence_of :username
  validates_presence_of :email
end
