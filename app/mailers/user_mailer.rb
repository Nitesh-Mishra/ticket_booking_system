class UserMailer < ApplicationMailer

  default from: "nmmishra.iipsmca@gmail.com"

  def receipt_send
    @greeting = "Hi"

    mail to: "nitesh.mishra143@gmail.com", subject: "Ticked Booked!!"
  end



=begin
def receipt_send(user)
    @greeting = "Hi"
	@user = user
    mail to: user.email, subject: "Booking Booking from Ticket Booking System"
  end

 =end
=end

end 