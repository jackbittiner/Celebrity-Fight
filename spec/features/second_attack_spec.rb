feature "player 2 attacks" do
  scenario "after player 1 has his turn, player 2 gets to attack" do
    sign_in_and_play
    click_button('submit')
    click_button('Revenge!')
    expect(page).to have_content("John: 100 Fame Points")
  end
end
