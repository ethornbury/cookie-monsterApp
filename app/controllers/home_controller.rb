class HomeController < ApplicationController
	def set_cookie
		#cookie saved on client side, well encryted and hard for user to change
		#we are hard coding a user in as if they had logged in
		#rails encrypts cookies by default
		cookies.signed[:user_name] = 'Emer'
		cookies.signed[:staff_number] = { :value => "XJ12", :expires => Time.now + 60}
		#3600 is the seconds in an hour
	end
	
	
	def show_cookie
		
		@user_name = cookies[:user_name]
		@user_number = cookies[:staff_number]
	end
	
	
	def delete_cookie
		
		cookies.delete :user_name
		cookies.delete :staff_number
	end
	


end
