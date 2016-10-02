require "rails_helper"

describe "the profile page", type: :feature do
  let(:user) { FactoryGirl.create(:user_with_products) }

  before :each do
    user
    login_as(user, scope: :user)
  end

  it "Shows the correct user profile" do
    visit root_path

    expect(page).to have_content user.name
  end

  it "Shows the user's products" do
    visit root_path

    expect(page).to have_content user.products.first.name
  end
end
