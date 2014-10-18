class MembersController < ApplicationController

  def new
    @member = Member.new(mentor: false)
  end

  private

  def mentor
    params["mentor"] || false
  end

  def person_params
    params.require(:member).permit(:provider, :iud)
  end
end
