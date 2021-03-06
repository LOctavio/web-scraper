#!/usr/bin/env ruby

require_relative '../lib/page_data'
require_relative '../lib/validation'

loop do
  page_data = PageData.new
  choice = Validation.new
  puts 'This program shows you the last 6 patches of the League of Legends video game'
  puts 'You can choose one of them to see the stats changes of champions and items in that patch'
  puts
  page_data.last_patches { |x, index| puts "#{index + 1}.-#{x.content}" }
  puts
  puts 'Select the version patch where are the changes that you want to see'
  puts 'To choose you need to write the number(A number between 1 and 6) on the left side of the patch you want to see'
  puts
  loop do
    choice.user_input = gets.to_i
    choice.valid_choice? ? break : puts('that is not a number between 1 and 6, try again')
  end

  page_data.choice = choice.user_input

  page_data.changes_list do |x|
    case x.name
    when 'h3' then print ' - '
    when 'h4' then print '    '
    when 'div' then print '     - '
    end
    puts x.content.lstrip
  end
  puts 'Do yo want to see another patch (type yes or no)'
  loop do
    choice.user_input = gets.chomp
    choice.yes_no_answer? ? break : puts('that is not a valid input')
  end
  break if choice.user_input == 'no'
end
