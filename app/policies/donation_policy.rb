class DonationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    user_is_not_owner?
  end

  def create?
    user_is_not_owner?
  end

  private
  def user_is_not_owner?
    record.project.user != user
  end
end
