class MentorsController < ApplicationController

  before_filter :set_current_member


  def index
    @mentors = Member.mentors.all
    render :'mentors/index'
  end

  private

  def set_current_member
    @member = current_member
  end
end
