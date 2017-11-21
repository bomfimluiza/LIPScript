class Car < ApplicationRecord
    has_many :rentals
    validates :plate, presence: true, length: { minimum: 7, maximum: 7 }
    validates :cartype, presence: true
    validates :year, presence: true, length: { minimum: 4 , maximum: 4}
end
