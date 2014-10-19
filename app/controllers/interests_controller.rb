class InterestsController < ApplicationController

  before_filter :set_member, only: [:create]
  def create
    @member.skills
  end

  private

  def interest_params
    params.require(:intests).permit(:name, :verified)
  end
end
