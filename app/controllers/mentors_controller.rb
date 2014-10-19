class MentorsController < ApplicationController

  before_filter :set_current_member


  def index
    @mentors = Member.mentors.all
    render :'mentors/index'
  end

  def show
    @member = set_current_member
  end

  private

  def set_current_member
    @member = current_member
  end
end
