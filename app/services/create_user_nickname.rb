class CreateUserNickname < ApplicationService
	attr_reader :name, :email, :nickname

  def initialize(name, email, nickname)
    @name = name
    @email = email
	@nickname = " "
    
  end

  def call
    #prev_user = User.find_by nickname: @nickname
    #raise StandardError, 'User already has a nickname' if prev_user.nickname?
	puts @nickname
	puts @name
	nickname = "io"

	#nickname = name.join(nick)
	User.update_default_attributes(nickname: nickname)
    #User.create(name: @name, email: @email, nickname: @nickname)
  end

end