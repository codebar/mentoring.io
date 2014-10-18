class MemberSkillsController < ApplicationController

  def create
    @member_skills = MemberSkills.create(member_skills_params)
    if @member_skills.valid?
      # todo redirect somewhere
      redirect_to '/'
    else
      render
    end
  end

end
