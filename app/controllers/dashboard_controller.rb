class DashboardController < ApplicationController
  before_filter :set_member, only: [:index]
  def index
  end

  private

  def set_member
    @member = current_member
  end
end