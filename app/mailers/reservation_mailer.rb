class ReservationMailer < ApplicationMailer
  default from: "udaya.ratna@gmail.com"

  
     def reserve_email(reservation)
    @reservation = Reservation.last
    mail(to: reservation.email, subject: "Made Reservation")


   end
 end
