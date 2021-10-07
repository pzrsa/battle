feature "Display Points" do
  scenario "display player hit points" do
    sign_in_and_play
    expect(page).to have_content("John: 50 HP & Bob: 50 HP")
  end
end
