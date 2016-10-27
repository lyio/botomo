class Goodreads
  include HTTParty
  format :xml

  @@KEY = ENV['GOODREADS_KEY']

  def self.query(term)
      term = URI.encode(term)
      res = self.get("http://www.goodreads.com/search.xml?key=#{@@KEY}&q=#{term}", {})
      read_xml res
  end

  private
  def self.read_xml(xml_string)
    xml_string['GoodreadsResponse']['search']['results']['work'].map do |work|
      best_book = work['best_book']
      {
        :title => best_book['title'],
        :author => best_book['author']['name'],
        :image => best_book['image_url'],
        :year => work['original_publication_year']
      }
    end
  end
end
