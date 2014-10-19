class ClassifiedsController < ApplicationController

  before_filter :set_member, only: [:new, :create]

  def index
    @classifieds = Classified.all
  end

  def new
    @skills = Skill.all
    @classified = @member.classifieds.build
  end

  def create
    @classified = @member.classifieds.create(classified_params)

    if @member.valid?
      # todo redirect somewhere!
      redirect_to '/'
    else
      render 'members/classified_form'
    end
  end

  private

  def set_member
    @member = current_member
  end

  def classified_params
    params.require(:classified).permit(:skill_id, :description, :remote, :face_to_face)
  end
end
