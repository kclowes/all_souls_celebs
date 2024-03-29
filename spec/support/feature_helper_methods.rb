def login_user
  visit root_path
  click_on "Login"
  expect(page).to have_content("Username / password is invalid")
  fill_in "Email", with: "user@example.com"
  fill_in "Password", with: "password"
  click_on "Login"
  expect(page).to have_content("user@example.com")
end