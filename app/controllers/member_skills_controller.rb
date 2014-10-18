class MemberSkillsController < ApplicationController

  def new
    @member = Member.find(params[:member_id])
    render 'members/memberskills_form'
  end

  def create
    puts member_skills_params
    @member = Member.find(params[:member_id])
    @member.update!(member_skills_params)
    # @member.update_attributes(member_skills_params)
    if @member.valid?
      # todo redirect somewhere!
      redirect_to '/'
    else
      render :'members/memberskills_form'
    end
  end


  private

  def member_skills_params
    params.require(:member).permit(:member_skill_ids, :level)
  end
end
