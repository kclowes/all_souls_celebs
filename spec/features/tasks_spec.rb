require 'rails_helper'

feature 'tasks' do
  scenario 'user can add a new task' do
    create_user

    login_user
    click_on 'Add New Task'
    fill_in 'task[name]', with: 'Greeter'
    click_on 'Submit'
    expect(page).to have_content'Greeter'
  end
end