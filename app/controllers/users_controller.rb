class UsersController < ApplicationController
  before_action :authorize_user
  def projects
  end

  def donations
  end
  private
  def authorize_user
    authorize current_user
  end
end
