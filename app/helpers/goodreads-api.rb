require "rexml/document"
require "open-uri"

module Goodreads
  class Api

      @@KEY = ENV['GOODREADS_KEY']

      def self.query(term)
          term = URI.encode(term)
          res = open("http://www.goodreads.com/search.xml?key=#{@@KEY}&q=#{term}").read
          read_xml res
      end

      def self.read_xml(buffer)
        doc = REXML::Document.new buffer
        books = []
        doc.elements.each('GoodreadsResponse/search/results/work') do |work|
          elements = work.elements
          book = {}
          book[:title] = elements['best_book'].elements['title'].text
          book[:author] = elements['best_book'].elements['author'].elements['name'].text
          book[:year] = elements['original_publication_year'].text
          book[:image] = elements['best_book'].elements['image_url'].text
          books.push book
        end
        books
      end
  end
end
