require_relative './spec_helper'

describe Artist do
  before(:each) do
    Artist.reset_all
  end

  # What's the difference between let! and let?
  # Why do we need it? Change it to the non ! version
  # and see what test suddenly fails.
  # http://betterspecs.org/#let
  let!(:artist){Artist.new}


  it "can be initialized" do
    artist.should be_an_instance_of(Artist)
  end

  it "can have a name" do
    artist.name = "Adele"
    artist.name.should eq("Adele")
  end

  it 'converts its name to a url friendly parameter' do
    artist.name = 'Miley Cyrus'
    artist.to_param.should == "miley-cyrus"
  end

  describe "Class methods" do
    it "keeps track of the artists that have been created" do
      Artist.all.should include(artist)
    end

    it "can count how many artists have been created" do
      Artist.count.should eq(1)
    end

    it "can reset the artists that have been created" do
      Artist.reset_all
      Artist.count.should eq(0)
    end
  end

  describe "with songs" do
    let(:song){Song.new}

    it "can have a song added" do
      artist.add_song(song)
      artist.songs.should include(song)
    end

    it "knows how many songs it has" do
      artist.add_songs([song, Song.new])
      artist.songs.count.should eq(2)
    end
  end

end
