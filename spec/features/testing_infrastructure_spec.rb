feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content("Battle!")
  end
end

feature "Entering names" do
  scenario "Player 1 enters their name" do
    visit "/"
    fill_in "player_1", :with => "Ben"
    expect(page).to have_field("player_1", with: "Ben")

  end
end
