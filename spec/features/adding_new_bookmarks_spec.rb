feature 'adding new bookmarks' do
  scenario 'a new bookmark is added' do
    setup_test_database
    visit('/bookmarks/new')
    fill_in('url', with: 'http://test_bookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_link('Test Bookmark', href:'http://test_bookmark.com')
  end
end
