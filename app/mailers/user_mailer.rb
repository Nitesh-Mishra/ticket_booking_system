class UserMailer < ApplicationMailer

  default from: "nmmishra.iipsmca@gmail.com"

  def receipt_send(user)
    @greeting = "Hi"
	@user = user
    mail to: user.email, subject: "Booking Booking from Ticket Booking System"
  end

  



=begin

def receipt_send
    @greeting = "Hi"

    mail to: session[:user_id] , subject: "Ticked Booked!!"
  end
 =end
=end

end 