require 'rails_helper'

feature 'celebrants' do
  scenario 'admin can add a celebrant' do
    create_user

    login_user
    click_on 'Add New Celebrant'
    fill_in 'celebrant[name]', with: 'John Baptist'
    # check 'communion'
    # check 'greeter'
    click_on 'Submit'
    expect(page).to have_content 'John Baptist'
    # expect(page).to have_content 'greeter'
    # expect(page).to have_content 'communion'
  end
end