require "rails_helper"

RSpec.feature "signing up", type: :feature do
  let(:user) { FactoryGirl.build(:user) }

  scenario "a user signs up" do
    visit new_user_registration_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"

    expect(page).to have_content user.first_name
  end
end
