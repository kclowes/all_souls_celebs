require 'rails_helper'

feature 'celebrants tasks' do
  it 'will add tasks celebrants are willing to do' do
    create_user
    create_task
    create_celebrant

    login_user

    click_on 'John Baptist'
    check 'Greeter'
    click_on 'Create Duty'
    expect(page).to have_content 'Greeter'
  end
end