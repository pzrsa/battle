feature "Reduce HP" do
  scenario "reduce player 2 HP by 10 points" do
    sign_in_and_play
    click_button("Attack")
    click_button("Go back")
    expect(page).to have_content("John: 50 HP & Bob: 40 HP")
  end
end
