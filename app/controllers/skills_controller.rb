class SkillsController < ApplicationController

  before_filter :set_member, only: [:new, :create]

  def new
    @skills = Skill.all

  end

  def create
    @member.skill_ids = member_skills_params[:skill_ids]

    if @member.valid?
      #todo: redirect somewhere!
      redirect_to root_path
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
end
