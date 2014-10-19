class ProfilesController < ApplicationController
  before_filter :logged_in?
  before_filter :set_current_member

  def new
  end

  def edit
  end

  def show
    @member
  end

  def update
    @member.update(profile_params)

    if @member.valid?
      @member.save
      if @member.mentor
        redirect_to new_member_skill_path
      else
        redirect_to new_classified_path
      end
    else
      render 'profiles/new'
    end
  end

  private

  def set_current_member
    @member = current_member
  end

  def profile_params
    params.require(:member).permit(:full_name, :about, :expertise, :location)
  end
end
