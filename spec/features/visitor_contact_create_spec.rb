require "spec_helper"

feature 'Contact creation' do 
  scenario 'allow access contacts page' do 
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end