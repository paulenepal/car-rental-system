class Customer < ApplicationRecord
    has_many :rentals

    validates :full_name, presence: true
    validates :email, presence: true
    validates :address, presence: true
    validates :contact_number, presence: true
end
