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
      redirect_to member_profile_form_path(@member.id)
    else
      render :'members/new'
    end
  end

  # may change this........
  # get profile form
  def profile_form
    @member = Member.find(params[:member_id])
    render :'members/profile_form'
  end

  # put profile form
  def create_profile
    @member = Member.find(params[:member_id])
    @member.update(member_profile_params)
    if @member.valid?
      @member.save
      if @member.mentor
        # redirect_to new_member_member_skill_path(params[:member_id])
        redirect_to new_member_member_skill_path(params[:member_id])
      else
        redirect_to new_member_classified_path(params[:member_id])
      end
    else
      render :'member/profile_form'
    end
  end


  private

  def mentor
    params["mentor"] || false
  end

  def member_params
    params.require(:member).permit(:email, :username, :full_name, :gender, :provider, :uid)
  end

  def member_profile_params
    params.require(:member).permit(:about, :expertise, :location)
  end

end
