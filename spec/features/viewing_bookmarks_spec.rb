# in spec/features/viewing_bookmarks_spec.rb

feature 'viewing bookmarks' do
  
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
  
  scenario 'A user can see bookmark' do
    visit('/bookmarks')
    
    expect(page).to have_content "http://makersacademy.com"
    expect(page).to have_content "http://destroyallsoftware.com"
    expect(page).to have_content "http://google.com"
  end
  
end

