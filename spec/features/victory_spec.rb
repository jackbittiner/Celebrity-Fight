feature 'gives users a victory message' do
  scenario 'a player reaches 0 fp' do
    sign_in_and_play
    18.times do
      click_button('submit')
      click_button('Revenge!')
    end
    click_button('submit')
    expect(page).to have_content('John wins!')
  end
end
