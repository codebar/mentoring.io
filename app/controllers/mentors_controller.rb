class MentorsController < ApplicationController
  before_filter :logged_in?

  def index
    @mentors = Member.mentors.with_complete_profile.where.not(id: current_member.id)
  end

  def show
    @member = Member.find(params[:id])
  end
end
