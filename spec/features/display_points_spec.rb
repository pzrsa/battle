feature "Display Points" do
  scenario "display player hit points" do
    sign_in_and_play
    expect(page).to have_content("Player 1: 100 HP & Player 2: 100 HP")
  end
end
