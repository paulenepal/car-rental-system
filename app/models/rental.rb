class Rental < ApplicationRecord
  belongs_to :car
  belongs_to :customer

  validates :car_id, presence: true
  validates :customer_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
