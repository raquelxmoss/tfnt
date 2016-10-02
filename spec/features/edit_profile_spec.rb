describe "the edit profile page", type: :feature do
  let(:user) { FactoryGirl.create(:user_with_products) }

  before :each do
    user
    login_as(user, scope: :user)
  end

  it "Shows the email field" do
    visit root_path

    page.has_selector?("input #user_email")
  end
end
