class DashboardController < ApplicationController
  before_filter :set_member, only: [:index]
  layout 'application'
  def index
  end

  private

  def set_member
    @member = current_member
  end
end