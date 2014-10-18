class MemberSkillsController < ApplicationController

  def new
    @member = Member.find(params[:member_id])
    render 'members/memberskills_form'
  end

  def create
    @member = Member.find(params[:member_id])
    @member.member_skills.create(member_skills_params[:member_skills])
    if @member.valid?
      # todo redirect somewhere!
      redirect_to root
    else
      render :'members/memberskills_form'
    end
  end


  private

  def member_skills_params
    params.require(:member).permit(:member_skills => [:skill_id, :level])
  end
end
