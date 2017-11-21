class Client < ApplicationRecord
    has_many :rentals
    validates :name, presence: true, length: { minimum: 5 }
    validates :cpf, presence: true, length: { minimum: 11 }
    validates :rg, presence: true
end
