class ChatroomPolicy < ApplicationPolicy
  def show?
    true
  end

  def create_chat?
    true
  end
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

