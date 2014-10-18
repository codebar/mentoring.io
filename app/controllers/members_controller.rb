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
    @member = Member.find(params[:member_id])
    render :'members/profile_form'
  end

  # put profile form
  def create_profile
    puts params
    @member = Member.find(params[:member_id])
    @member.update(params[:member])
    if @member.valid?
      @member.save
      if @member.mentor
        redirect_to member_member_skills_path(params[:member_id])
      else
        redirect_to member_classified_index_path(params[:member_id])
      end
    else
      render :'member/profile_form'
    end
  end

  private

  def mentor
    params["mentor"] || false
  end

  def member_params
    params.require(:member).permit(:email, :username, :full_name, :gender)
  end
end
