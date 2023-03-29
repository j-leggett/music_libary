# file: app.rb

require_relative 'lib/database_connection'
require_relative 'lib/artist_repository'
# We need to give the database name to the method `connect`.
DatabaseConnection.connect('music_library')

# Perform a SQL query on the database and get the result set.
artist_repository = ArtistRepository.new

artist_repository.all.each do |artist|
  p artist
end
