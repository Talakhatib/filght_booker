# Preview all emails at http://localhost:3000/rails/mailers/ticket_mailer
class TicketMailerPreview < ActionMailer::Preview

# Preview this email at http://localhost:3000/rails/mailers/ticket_mailer/ticket_information
  def ticket_information
    passenger = Passenger.first
    booking = passenger.booking_id
    TicketMailer.ticket_information(booking,passenger)
  end

end
