class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def edit?
      record.owner == user
    end

    def update?
      record.owner == user
    end
  end

  def show?
    true
  end
end
