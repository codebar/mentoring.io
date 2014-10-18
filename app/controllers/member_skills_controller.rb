class MemberSkillsController < ApplicationController

  def new
    @member = Member.find(params[:member_id])
    # @member_skill = MemberSkill.new
    render 'members/memberskills_form'
  end

  # def create
  #   puts "MEMBA SKILLS #{member_skills_params}"
  #   @member = Member.find(params[:member_id])
  #   # @member.member_skills.create(member_skills_params)
  #   if @member.valid?
  #     # todo redirect somewhere!
  #     redirect_to '/'
  #   else
  #     render :'members/memberskills_form'
  #   end
  # end


  private

  def member_skills_params
    params.require(:member_skill).permit(:skill_id, :level)
  end
end
