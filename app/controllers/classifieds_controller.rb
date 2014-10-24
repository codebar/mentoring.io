class ClassifiedsController < ApplicationController

  before_filter :set_member, only: [:new, :create, :preview, :edit, :update, :confirm, :personal]
  before_filter :set_classified, only: [:edit, :update]
  before_filter :logged_in?


  def index
    @skills = Skill.all
    if search_params
      @classifieds = Classified.search(search_params).where(preview: false)
    else
      @classifieds = Classified.where(preview: false)
    end
  end

  def new
    @skills = Skill.all
    @classified = @member.classifieds.build
  end

  def create
    @classified = @member.classifieds.create!(classified_params)

    redirect_to classified_preview_path(@classified.id), notice: "Your classified has been created"
  end

  def confirm
    @classified = @member.classifieds.find(params[:classified_id])
    @classified.update_attribute :preview, false

    redirect_to personal_classified_path, notice: "Your classified has been listed"
  end

  def personal
    @classifieds = @member.classifieds
  end

  def preview
    @classified = @member.classifieds.find(params[:classified_id])
  end

  def edit
  end

  def update
    @classified.update(classified_params)

    redirect_to classified_preview_path(@classified.id), notice: "Your classified has been updated"
  end

  def show
    
  end


  private

  def set_member
    @member = current_member
  end

  def set_classified
    @classified = @member.classifieds.find(params[:id])
  end

  def classified_params
    params.require(:classified).permit(:description, :remote, :face_to_face, :preview, skill_ids: [])
  end

  def search_params
    params.require(:search).permit(:location, :remote, :face_to_face, skill_ids: []) if params[:search]
  end
end
