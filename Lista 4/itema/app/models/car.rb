class Car < ApplicationRecord
    validates :plate, presence: true,
                      length: { minimum: 5 }
    validates :cartype, presence: true,
                        length: { maximum: 1 }
    validates :year, presence: true,
                     length: { minimum: 4 }
end
