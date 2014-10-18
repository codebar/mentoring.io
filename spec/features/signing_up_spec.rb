require 'rails_helper'

feature 'Sign up' do
  scenario 'A user can fill in their details' do
    visit root_path
    click_on 'Sign up'

    fill_in "Email", with: 'test@email.com'
    fill_in "Username", with: 'supermentor'
    fill_in "Full name", with: 'Olive Sparkles'
    fill_in "Gender", with: 'Other'
  end
end

