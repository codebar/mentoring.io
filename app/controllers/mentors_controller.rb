class MentorsController < ApplicationController
  before_filter :logged_in?

  def index
    @mentors = Member.mentors.where.not(id: current_member.id).all
  end

  def show
    @member = Member.find(params[:id])
  end
end
