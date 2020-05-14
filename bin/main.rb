#!/usr/bin/env ruby

require './lib/page_data'
require './lib/validation'

page_data = PageData.new
choice = Validation.new

puts 'This program shows you the last 6 patches of the League of Legends video game'
puts 'You can choose one of them to see the stats changes of champions and items in that patch'
puts
page_data.last_patches
puts
puts 'Select the version patch where are the changes that you want to see'
puts 'To choose you need to write the number(A number between 1 and 6) on the left side of the patch you want to see'
puts
loop do
  choice.user_input = gets.to_i
  choice.valid? ? break : puts('that is not a number between 1 and 6, try again')
end

page_data.choice = choice.user_input

# show all the changes applied in the patch
