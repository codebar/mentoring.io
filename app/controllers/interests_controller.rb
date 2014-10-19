class InterestsController < ApplicationController

  before_filter :set_member, only: [:create]

  def create
    @interest = @member.added_interests.create(interest_params)
    # render 'skills/new'
    if @interest.valid?
      render :json => {:status => "OK", :name => @interest.name, :id => @interest.id}
    else
      render :json => {:status => "ERROR"}
    end
  end

  private

  def interest_params
    params.require(:interest).permit(:name, :verified)
  end

  def set_member
    @member = current_member
  end
end
