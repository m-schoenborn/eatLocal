class FavoritePolicy < ApplicationPolicy
  def create?
    true
  end

  def destroy?
    true
  end

  class Scope < Scope
    def resolve
      scope.where(status: 'accepted')
    end
  end
end
