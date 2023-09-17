require "spec_helper"

feature 'Contact creation' do 
  scenario 'allow access contacts page' do 
    visit '/contacts'
    expect(page).to have_content 'Contacts'
  end
end