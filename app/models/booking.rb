class Booking < ApplicationRecord
    has_many :passengers , foreign_key: :booking_id , class_name:"Passenger" 
    accepts_nested_attributes_for :passengers
    
    belongs_to :flight ,class_name:"Flight"
end
