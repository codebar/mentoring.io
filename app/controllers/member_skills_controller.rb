class MemberSkillsController < ApplicationController

  def new
    @member = Member.find(params[:member_id])
    haml :'members/classified_form'
  end

  def create
    @member = Member.find(params[:member_id])
    @member.update_attributes(member_skills_params)
    if @member.valid?
      # todo redirect somewhere!
      redirect_to '/'
    else
      render :'members/classified_form'
    end
  end


  private

  def member_skills_params
    params.require(:member).permit(:skill_id, :level)
  end
end
