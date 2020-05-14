require 'nokogiri'
require 'open-uri'

class PageData
  def initialize
    @page_url = 'https://na.leagueoflegends.com'
    @patch_notes = '/en-us/news/tags/patch-notes'
    @doc = Nokogiri::HTML(URI.open(@page_url + @patch_notes))
  end

  def last_patches
    @doc.xpath("//h2[@class = 'style__Title-i44rc3-8 jprNto']").each_with_index do |link, count|
      puts "#{count + 1}.-#{link.content}"
    end
  end
end