class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def edit?
    record.owner == user
  end

  def update?
    record.owner == user
  end

  def show?
    true
  end

  def create?
    true
  end
end
