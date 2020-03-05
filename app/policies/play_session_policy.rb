class PlaySessionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.user == 'recreation worker'
  end

  def index?
    true
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    false
  end

end
