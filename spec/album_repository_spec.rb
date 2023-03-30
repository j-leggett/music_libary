require 'album_repository'

def reset_albums_table
  seed_sql = File.read('spec/seeds_albums.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
  connection.exec(seed_sql)
end

describe AlbumRepository do
  before(:each) do 
    reset_albums_table
  end
  
  it "returns fist set all" do
    repo = AlbumRepository.new

    albums = repo.all
    

    expect(albums[0].id).to eq '1'
    expect(albums[0].title).to eq 'Graduation'
    expect(albums[0].release_year).to eq  '2007'
    expect(albums[0].artist_id).to eq  '1'

   
  end

  it "returns second set" do

    repo = AlbumRepository.new

    albums = repo.all

    expect(albums[1].id).to eq  '2'
    expect(albums[1].title).to eq  'Blue Side Park'
    expect(albums[1].release_year).to eq  '2011'
    expect(albums[1].artist_id).to eq  '2'
  end

  it "returns the correct table length" do
    repo = AlbumRepository.new

    albums = repo.all

    expect(albums.length).to eq 2
  end

  it "returns the first single Album object" do
    repo = AlbumRepository.new

    albums = repo.find(1)
    expect(albums.id).to eq '1'
    expect(albums.title).to eq 'Graduation'
    expect(albums.release_year).to eq '2007'
    expect(albums.artist_id).to eq '1'
  end




  
end