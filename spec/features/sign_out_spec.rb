feature "Sign out" do
  scenario "user can sign out from his account" do
    sign_up
    sign_in
    click_button "Sign out"
    expect(page).to have_content "Goodbye!"
    expect(page).not_to have_content "Welcome Bob!"
  end
end
