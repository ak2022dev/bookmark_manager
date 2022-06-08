# in lib/bookmark.rb
require 'pg'

class Bookmark
  def self.all
    url_array = []
    conn = PG.connect( dbname: 'bookmark_manager')
    conn.exec( "SELECT url FROM bookmarks" ) do |result|
      result.each do |row|
        row.each do |k,v|
          url_array << v
        end
      end
    end
    url_array
    # [
    #   "http://makersacademy.com",
    #   "http://destroyallsoftware.com",
    #   "http://google.com"
    # ]
  end
end

