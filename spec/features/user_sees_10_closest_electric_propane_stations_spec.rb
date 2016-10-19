require 'rails_helper'

describe "When I enter a zipcode" do
  scenario "I see list of top 10 closest stations" do
    visit "/"
    fill_in 'q', :with => 80203
    click_on 'Locate'

    expect(current.path).to eq("/search")

    expect(page).to have_content()

    Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    And the stations should be limited to Electric and Propane
    And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
