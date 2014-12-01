require "verse_of_the_day/version"
require "httpclient"
require "nokogiri"

module VerseOfTheDay
  class Verse
    def self.retrieve
      page = HTTPClient.get('http://www.biblestudytools.com/bible-verse-of-the-day/')
      noko = Nokogiri::HTML(page.body)
      verse_div = noko.xpath('//div[@class="VerseOfTheDay"]/div[@class="VerseText"]')
      verse_div.text
    end
  end
end
