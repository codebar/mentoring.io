require 'rails_helper'

feature "A user visiting the homepage" do
  scenario "can view the app" do
    visit root_path

    expect(page).to have_content("mentoring.io")
  end
end
