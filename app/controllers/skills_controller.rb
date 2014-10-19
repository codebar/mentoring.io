class SkillsController < ApplicationController
  before_filter :logged_in?
  before_filter :set_member, only: [:new, :create]

  def new
    @skills = Skill.all
    @interests = Interest.new
  end

  def create
    @member.skill_ids = member_skills_params[:skill_ids]
    @member.interest_ids = member_interest_params[:interest_ids]

    if @member.valid?
      #todo: redirect somewhere!
      redirect_to dashboard_index_path
    else
      render 'skills/new'
    end
  end

  private

  def set_member
    @member = current_member
  end

  def member_skills_params
    params.require(:member).permit(skill_ids: [])
  end

  def member_interest_params
    params.require(:member).permit(interest_ids: [])
  end
end
