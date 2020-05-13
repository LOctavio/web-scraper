#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

patch_notes = 'https://na.leagueoflegends.com/en-us/news/tags/patch-notes'

doc = Nokogiri::HTML(URI.open(patch_notes))

puts 'This program shows you the last 6 patches of the League of Legends video game'
puts 'You can choose one of them to see the stats changes of champions and items in that patch'
puts

doc.xpath("//h2[@class = 'style__Title-i44rc3-8 jprNto']").each_with_index do |link, count|
    puts "#{count + 1}.-#{link.content}"
end

# validate if the choice is valid

puts 'Select the version patch where are the changes that you want to see'
puts 'To choose you need to write the number on the left side of the patch you want to see'

# add the choice of the user to a variable

# get the link of the patch page that the user chose

# show all the changes applied in the patch
