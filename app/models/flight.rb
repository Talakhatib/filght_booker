class Flight < ApplicationRecord
    belongs_to :arrival , class_name:"Airport"
    belongs_to :departure , class_name:"Airport"
    
    has_many :flight_bookings ,foreign_key: :flight_id, class_name:"Booking" 
end
