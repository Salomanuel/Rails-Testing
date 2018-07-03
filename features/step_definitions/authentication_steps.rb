Given("I visit the homepage") do
  visit root_path
end

When("I fill the sign up form") do
  click_link "Sign up"

  fill_in "user_email", :with => "tester@testdomain.test"
  fill_in "user_password", :with => "pa$$word"
  fill_in "user_password_confirmation", :with => "pa$$word"

  click_button "Sign up"
end

When("I confirm the email") do
  open_email("tester@testdomain.test")

  visit_in_email("confirm my account")
end

Then("should see that my account is confirmed") do
  message "Your email address has been successfully confirmed"

  expect(page).to have_content(message)
end

Given("I am a registered user") do
  @registered_user = FactoryBot.create(:user,
                                       :email => "tester@testdomain.test",
                                       :password => "pa$$word")
end

When("I fill in the login form") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be logged in") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am logged in") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the log out button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be redirected to the log in page") do
  pending # Write code here that turns the phrase above into concrete actions
end
