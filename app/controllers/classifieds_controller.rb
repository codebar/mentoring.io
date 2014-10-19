class ClassifiedsController < ApplicationController

  before_filter :set_member, only: [:new, :create, :preview, :edit, :update]

  def index
    @classifieds = Classified.all
  end

  def new
    @skills = Skill.all
    @classified = @member.classifieds.build
  end

  def create
    @classified = @member.classifieds.create!(classified_params)

    redirect_to classified_preview_path(@classified.id), notice: "Your classified has been created"
  end

  def preview
    @classified = @member.classifieds.find(params[:classified_id])
  end

  def edit
    @classified = @member.classifieds.find(params[:id])
  end

  def update
    @classified = @member.classifieds.find(params[:id])
    @classified.update(classified_params)

    redirect_to classified_preview_path(@classified.id), notice: "Your classified has been updated"
  end

  private

  def set_member
    @member = current_member
  end

  def classified_params
    params.require(:classified).permit(:description, :remote, :face_to_face, :preview, skill_ids: [])
  end
end
