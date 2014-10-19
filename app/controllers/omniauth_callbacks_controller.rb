class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  include Concerns::DeviseOverrides

  def github
    @member = Member.from_omniauth(request.env["omniauth.auth"], cookies[:mentor])

    if @member.persisted?
      sign_in_and_redirect @member, :event => :authentication
      set_flash_message(:notice, :success, :kind => "Github") if is_navigational_format?
    else
      session["devise.github_data"] = request.env["omniauth.auth"]
      redirect_to new_member_registration_url
    end
  end
end
