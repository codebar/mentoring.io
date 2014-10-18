class MembersController < ApplicationController

  def new
    @member = Member.new(mentor: false)
    render :'members/new'
  end

  def new_mentor
    @member = Member.new(mentor: true)
    render :'members/new'
  end

  # step one initial post
  def create
    @member = Member.new(params[:member])
    if @member.valid?
      render :'members/profile_form'
    else
      render :'members/new'
    end
  end

  # may change this........
  # get profile form
  def profile_form
    @member = Member.find(params[:id])
    render :'members/profile_form'
  end

  # put profile form
  def create_profile

  end

  private

  def mentor
    params["mentor"] || false
  end

  def access_params

  end
end
