feature "reducing opponents fame points" do
  scenario "when player 1 attack, player 2's fp reduces" do
    sign_in_and_play
    click_button('submit')
    click_button('Revenge!')
    click_button('submit')
    expect(page).to have_content("John: 90fp")
  end
end
