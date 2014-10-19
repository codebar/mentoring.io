class MemberSkillsController < ApplicationController

  before_filter :set_member, only: [:new, :create]

  def new
    @skills = Skill.all

    render 'members/memberskills_form'
  end

  def create
    @member.skill_ids = member_skills_params[:skill_ids]

    if @member.valid?
      #todo: redirect somewhere!
      redirect_to root_path
    else
      render :'members/memberskills_form'
    end
  end

  private

  def set_member
    @member = Member.find(params[:member_id])
  end

  def member_skills_params
    params.require(:member).permit(skill_ids: [])
  end
end
