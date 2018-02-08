feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content("Battle!")
  end
end

feature "Entering names" do
  scenario "Submitting names" do
    visit "/"
    fill_in "player_1", with: "Ben"
    fill_in "player_2", with: "Terry"
    click_button 'Submit'
    expect(page).to have_content("Ben versus Terry")
  end
end

feature "Hit points" do
  scenario "Viewing player 2 hit points" do
    visit "/"
    fill_in "player_1", with: "Ben"
    fill_in "player_2", with: "Hannah"
    click_button 'Submit'
    expect(page).to have_content("Ben versus Hannah 50 HP")
  end
  end
