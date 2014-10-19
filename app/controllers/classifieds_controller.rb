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
    @classified = @member.classifieds.create!(classified_params)

    redirect_to '/', notice: "Your classified has been posted"
  end

  private

  def set_member
    @member = current_member
  end

  def classified_params
    params.require(:classified).permit(:description, :remote, :face_to_face, skill_ids: [])
  end
end
