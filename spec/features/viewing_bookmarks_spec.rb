feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'viewing the bookmarks' do

    Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers Academy')
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: 'Destroy all things')
    Bookmark.create(url: "http://www.google.com", title: "Google")
   
    visit('/bookmarks')
    expect(page).to have_link('Makers Academy', href: "http://www.makersacademy.com")
    expect(page).to have_link('Destroy all things', href: "http://www.destroyallsoftware.com")
    expect(page).to have_link('Google', href: "http://www.google.com")
  end
end