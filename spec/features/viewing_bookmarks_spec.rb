feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'viewing the bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "https://github.com/SeanEmmers/bookmark-manager"
    expect(page).to have_content "https://www.uefa.com/uefaeuro-2020/"
  end
end