class Booking < ActiveRecord::Base
	SEAT_TYPE_LIST = ["Lower Class", "Middle Class", "Higher Class"]
	PAYMENT_METHOD_LIST = ["Cash On Delivery"]
end
