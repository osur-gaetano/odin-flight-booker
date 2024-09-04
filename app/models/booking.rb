class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passangers, class_name: "User", dependent: :destroy

  accepts_nested_attributes_for :passangers

  validates :flight_id, presence: true
end
