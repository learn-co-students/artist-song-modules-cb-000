require_relative 'spec_helper.rb'

describe Song do
  before(:each) do
    Song.reset_all
  end

  let!(:song) { Song.new }

  it "can initialize a song" do
    song.should be_a(Song)
  end

  it "can have a name" do
    song.name = "Jump Around"
    song.name.should eq("Jump Around")
  end

  it 'converts its name to a url friendly parameter' do
    song.name = "Jump Around"
    song.to_param.should == "jump-around"
  end

  it "has an artist" do
    song.artist = Artist.new.tap {|a| a.name = "miley"}
    song.artist.should be_a(Artist)
    song.artist.name.should eq("miley")
  end

  describe "Class methods" do
    it "keeps track of the songs that have been created" do
      Song.all.should include(song)
    end

    it "can count how many songs have been created" do
      Song.count.should eq(1)
    end

    it "can reset the songs that have been created" do
      Song.reset_all
      Song.count.should eq(0)
    end
  end

end
