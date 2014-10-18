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
    puts params
    @member = Member.create(member_params)
    if @member.valid?
      redirect_to member_profile_form_path(@member.id)
    else
      render :'members/new'
    end
  end

  # may change this........
  # get profile form
  def profile_form
    puts params
    @member = Member.find(params[:member_id])
    render :'members/profile_form'
  end

  # put profile form
  def create_profile

  end

  private

  def mentor
    params["mentor"] || false
  end

  def member_params
    params.require(:member).permit(:email, :username, :full_name, :gender)
  end
end
