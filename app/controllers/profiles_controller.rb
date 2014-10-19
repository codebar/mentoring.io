class ProfilesController < ApplicationController

  before_filter :set_current_member

  def new
  end

  def update
    @member.update(profile_params)

    if @member.valid?
      @member.save
      if @member.mentor
        redirect_to new_member_member_skill_path(@member)
      else
        redirect_to new_member_classified_path(@member)
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
    params.require(:member).permit(:about, :expertise, :location)
  end
end
