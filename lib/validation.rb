class Validation
  attr_accessor :user_input

  def valid_choice?
    @user_input >= 1 && @user_input <= 6 ? true : false
  end

  def yes_no_answer?
    @user_input == 'yes' || @user_input == 'no'
  end
end
