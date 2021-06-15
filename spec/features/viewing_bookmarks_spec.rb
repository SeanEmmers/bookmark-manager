feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'viewing the bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.askjeeves.com"
    expect(page).to have_content "http://www.twitter.com"
  end
end