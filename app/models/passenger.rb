class Passenger < ApplicationRecord

    belongs_to :booking, class_name:"Booking", optional: true

    validates :name, presence: true
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum:255}, format: { with: VALID_EMAIL_REGEX } 
    
    VALID_PHONE_REGEX = /\A\(?(?:\d{2})?\)?[- ]?\d{3}[- ]?\d{3}\z/i
    validates :phone, presence: true , format: { with: VALID_PHONE_REGEX }

    validates :date_of_birth, presence: true
    validates :address, presence: true
end 
