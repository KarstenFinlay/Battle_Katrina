feature "switching turns" do
  scenario 'current turn' do 
    sign_in_and_play
    expect(page).to have_content("Katy's turn")
  end

  scenario 'switching player turns' do
    sign_in_and_play
    click_button("Attack!")
    click_button("OK")
    expect(page).to have_content("Katrina's turn")
  end

end