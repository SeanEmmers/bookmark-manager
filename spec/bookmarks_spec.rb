require 'bookmarks'

describe Bookmarks do
  
  
  describe '#list' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmarks.list
      expect(bookmarks).to eq ["https://github.com/SeanEmmers/bookmark-manager", "https://www.uefa.com/uefaeuro-2020/"]
    end
  end
end