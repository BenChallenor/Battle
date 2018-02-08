feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content("Battle!")
  end
end

feature "Entering names" do
  scenario "Submitting names" do
    sign_in_and_play
    expect(page).to have_content("Ben versus Hannah")
  end
end

feature "Hit points" do
  scenario "Viewing player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content("Ben versus Hannah: 50 HP")
  end
  end

  feature "Attacking player 2" do
    scenario "Attack button exists" do
      sign_in_and_play
      expect(page).to have_selector(:link_or_button, "Attack!")
    end

    scenario 'Get confirmation of attack' do
      sign_in_and_play
      click_button('Attack!')
      expect(page).to have_content("You have attacked Hannah")
    end
end
