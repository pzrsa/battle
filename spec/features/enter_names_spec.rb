feature "Enter Names" do
  scenario "player submitting name" do
    visit("/")
    fill_in :player_1_name, with: "John"
    fill_in :player_2_name, with: "Bob"
    click_button "submit"
    expect(page).to have_content("John VS Bob")
  end
end
