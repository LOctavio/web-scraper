#!/usr/bin/env ruby

require './lib/page_data'

page_data = PageData.new

puts 'This program shows you the last 6 patches of the League of Legends video game'
puts 'You can choose one of them to see the stats changes of champions and items in that patch'
puts
page_data.last_patches
puts
puts 'Select the version patch where are the changes that you want to see'
puts 'To choose you need to write the number on the left side of the patch you want to see'

# add the choice of the user to a variable

# validate if the choice is valid

# get the link of the patch page that the user chose

# show all the changes applied in the patch
