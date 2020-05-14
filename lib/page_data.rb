require 'nokogiri'
require 'open-uri'

class PageData
  attr_writer :choice

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

  def patch_page
    path = "//a[@class = 'style__Wrapper-i44rc3-0 style__ResponsiveWrapper-i44rc3-13 gkCnQM isVisible']//@href"
    @page_url << @doc.xpath(path)[@choice - 1]
  end

  private

  def fetch_page
    @doc = Nokogiri::HTML(URI.open(@page_url + patch_page))
  end
end
