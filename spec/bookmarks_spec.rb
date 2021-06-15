require 'bookmarks'

describe Bookmarks do
  
  
  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include "http://www.askjeeves.com", "http://www.twitter.com", "http://www.google.com"
    end
  end
end