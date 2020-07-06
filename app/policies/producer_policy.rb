class ProducerPolicy < ApplicationPolicy
  def show?
    true
  end

  def new?
    user.present? && user.producer.blank?
  end

  def create?
    new?
  end

  def edit?
    user.present? && record.user == user
  end

  def update?
    edit?
  end

  def accept?
    user.role == 'admin'
  end

  def decline?
    accept?
  end

  class Scope < Scope
    def resolve
      scope.where(status: 'accepted')
    end
  end
end
