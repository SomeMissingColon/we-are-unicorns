class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
  def projects?
    logged_in?
  end

  def donations?
    logged_in?
  end

  def profile?
    logged_in?
  end

  def current_user_project?
    logged_in?
  end

  private
  def logged_in?
    !user.nil?
  end
end
