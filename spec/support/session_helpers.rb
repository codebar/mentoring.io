module SessionHelpers

  def login_with( email, password )
    visit new_member_session_path
    fill_in 'member_email', with: email
    fill_in 'member_password', with: password
    click_on 'Log in'
  end

end