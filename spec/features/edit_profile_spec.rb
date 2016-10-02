require "rails_helper"

RSpec.feature "editing a profile", type: :feature do
  let(:user) { FactoryGirl.create(:user_with_products) }

  before :each do
    user
    login_as(user, scope: :user)
    visit edit_user_registration_path
  end

  scenario "a user edits their profile" do
    expect(page).to have_selector("#user_email")
  end
end
