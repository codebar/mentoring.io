class MembersController < ApplicationController
  
  def new
    cookies[:mentor] = false
    redirect_to new_member_registration_path
  end

  def new_mentor
    cookies[:mentor] = true
    redirect_to new_member_registration_path
  end

  # step one initial post
  def create
    @member = Member.create(member_params)
    if @member.valid?
      redirect_to new_member_profile_path
    else
      render :'members/new'
    end
  end

  private

  def member_params
    params.require(:member).permit(:email, :username, :full_name, :gender, :provider, :uid)
  end
end
