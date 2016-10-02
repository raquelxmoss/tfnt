require "rails_helper"

RSpec.feature "signing in", type: :feature do
  let(:user) { FactoryGirl.create(:user_with_products) }

  scenario "a user visits the sign in page" do
    visit new_user_session_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"

    expect(page).to have_content user.first_name
  end
end
