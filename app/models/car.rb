class Car < ApplicationRecord
    has_many :rentals
    validates :make, presence: true
    validates :model, presence: true
    validates :plate_number, presence: true

    def car_name
        "#{make} #{model}"
    end
end
