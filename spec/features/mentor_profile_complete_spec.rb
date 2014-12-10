require 'rails_helper'

feature 'Viewing mentors' do
  let!(:member) { create(:complete_member) }

  before do
    create(:member, mentor: true, username: 'incompleteuser')
    create(:complete_member, mentor: true, username: 'completeuser')
  end

  scenario 'Only mentors with complete profiles are visible' do
    login_with(member.email, 'password')
    expect(current_path).to eql dashboard_index_path

    click_link 'View Mentors'
    expect(current_path).to eql mentors_path

    expect(page).to_not have_content 'incompleteuser'
  end
end