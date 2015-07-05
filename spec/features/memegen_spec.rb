require 'rails_helper'

feature "create a bernie meme", %Q{
  As a visitor
  I want to upload a picture
  So that I can create a Bernie
} do

  scenario "visitior lands on homepage" do
    visit root_path

    expect(page).to have_content("Bernify")
    expect(page).to have_content("Create a Bernie")
    expect(page).to have_content("Backgrounds")
    expect(page).to have_content("Bernies")
    expect(page).to have_button("Save Bernie")
    expect(page).to have_content("Browse Bernies")
  end

end
