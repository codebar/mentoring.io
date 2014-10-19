class ClassifiedController < ApplicationController

  def new
    @member = Member.find(params[:member_id])
    @skills = Skill.all
    @classified = @member.classifieds.build
    render :'members/classified_form'
  end

  def create
    puts params
    @member = Member.find(params[:member_id])
    @classified = @member.classifieds.create(classified_params)
    if @member.valid?
      # todo redirect somewhere!
      redirect_to '/'
    else
      render 'members/classified_form'
    end
  end


  private

  def classified_params
    params.require(:classified).permit(:skill_id, :description, :remote, :face_to_face)
  end
end
