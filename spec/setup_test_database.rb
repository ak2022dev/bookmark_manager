# in spec/setup_test_database.rb

require 'pg'

def setup_test_database
  p "Setting up test database..."

  connection = PG.connect(dbname: 'bookmark_manager_test')

  # Efficiently clear the bookmarks table
  connection.exec("TRUNCATE bookmarks;")
end
