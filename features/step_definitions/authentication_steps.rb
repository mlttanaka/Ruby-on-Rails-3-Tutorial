Given /^a user visits the signin page$/ do
  visit signin_path
end

When /^she submits invalid signin information$/ do
  click_button "Sign in"
end

Then /^she should see an error message$/ do
  page.should have_selector('div.alert.alert-error')
end

Given(/^she has an account$/) do
  @user = User.create(name: "Miss User", email: "ms.user@example.com",
                      password: "Muse1234", password_confirmation: "Muse1234")
end

When(/^she submits valid signin information$/) do
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

Then(/^she should see her profile page$/) do
  page.should have_selector('title', text: @user.name)
end

Then(/^she should see a signout link$/) do
  page.should have_link('Sign out', href: signout_path)
end
