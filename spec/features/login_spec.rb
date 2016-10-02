describe "the signin process", type: :feature do
  let(:user) { FactoryGirl.create(:user_with_products) }

  it "signs me in" do
    visit new_user_session_path
    within("#new_user") do
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
    end

    click_button "Log in"
    expect(page).to have_content user.name
  end
end
