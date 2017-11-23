class Rental < ApplicationRecord
    belongs_to :client
    belongs_to :car
    validates :startdate, presence: true
    validates :enddate, presence: true
end
