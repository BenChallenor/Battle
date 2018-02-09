feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content("Battle!")
  end
end

feature "Entering names" do
  scenario "Submitting names" do
    sign_in_and_play
    expect(page).to have_content("Player 1 versus Player 2")
  end
end

feature "Hit points" do
  scenario "Viewing player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content("Player 1 versus Player 2: 50 HP")
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
      expect(page).to have_content("You have attacked Player 2")
    end
end

feature "Implementing hit points" do
  scenario "Attacking player 2 once reduces hit points to 40" do
    sign_in_and_play # attacking player 2
    click_button('Attack!')
    expect(page).to have_content("Player 2's HP is now 40")
  end

  feature "changing turns" do
    scenario "After player 1 attack, we can proceed to the next turn" do
      sign_in_and_play # attacking player 2
      click_button('Attack!')
      expect(page).to have_selector(:link_or_button, "Proceed to next turn")
    end

    scenario "proceed to next turn button proceeds to player 2's turn" do
      sign_in_and_play # attacking player 2
      click_button('Attack!')
      click_button('Proceed to next turn')
      expect(page).to have_content("Player 2 versus Player 1: 50 HP")
    end

    scenario "Attacking player 1 once reduces hit points to 40" do
      sign_in_and_play
      click_button('Attack!')
      click_button('Proceed to next turn')
      click_button('Attack!')
      expect(page).to have_content("Player 1's HP is now 40")
    end
  end


end
