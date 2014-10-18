class MembersController < ApplicationController

  def new
    @member = Member.new(mentor: false)
  end

  private

  def mentor
    params["mentor"] || false
  end
end
