require "spec_helper"

feature 'Contact creation' do 
  scenario 'allow access contacts page' do 
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario 'allows a guest create contact' do 
    visit '/contacts'
    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => 'something'
    click_button 'Send message'

    expect(page).to have_content 'Thanks!'
  end
end
