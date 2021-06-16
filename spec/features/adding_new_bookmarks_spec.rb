feature 'adding new bookmarks' do
  scenario 'a new bookmark is added' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://test_bookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://test_bookmark.com'
  end
end
