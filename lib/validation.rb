class Validation
  attr_accessor :user_input

  def valid?
    (1..6).each do |x|
      return true if x == @user_input
    end
    false
  end
end
