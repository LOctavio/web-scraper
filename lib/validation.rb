class Validation
  attr_accessor :user_input

  def valid?
    @user_input >= 1 && @user_input <= 6 ? true : false
  end
end
