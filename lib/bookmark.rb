# in lib/bookmark.rb
require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec("SELECT * FROM bookmarks")
    result.map { |bookmark| bookmark['url'] }

=begin
    # Was second version
    url_array = []
    conn = PG.connect( dbname: 'bookmark_manager')
    conn.exec( "SELECT url FROM bookmarks" ) do |result|
      result.each do |row|
        row.each do |k,v|
          url_array << v
        end
      end
    end
=end
=begin
    # Was first version
    url_array
    # [
    #   "http://makersacademy.com",
    #   "http://destroyallsoftware.com",
    #   "http://google.com"
    # ]
=end
  end
end

