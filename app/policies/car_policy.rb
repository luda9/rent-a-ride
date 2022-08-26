class CarPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def update?
    user_owner?
  end

  def destroy?
    user_owner?
  end

  private

  def user_owner?
    record.owner == user
  end
end
