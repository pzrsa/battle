feature "Enter Names" do
  scenario "player submitting name" do
    sign_in_and_play
    expect(page).to have_content("John VS Bob")
  end
end
