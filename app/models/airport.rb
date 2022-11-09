class Airport < ApplicationRecord
    has_many :departing_flights , foreign_key: :departure_id , class_name:"Airport"
    has_many :arriving_flights , foreign_key: :arrival_id , class_name:"Airport"

    validates :code, presence: true , length: {minimum:3, maximum:3}
end
