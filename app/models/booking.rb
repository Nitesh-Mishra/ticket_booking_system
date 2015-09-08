class Booking < ActiveRecord::Base
	belongs_to :user
	SEAT_TYPE_LIST = ["Lower Class", "Middle Class", "Higher Class"]
	PAYMENT_METHOD_LIST = ["Cash On Delivery"]
end
