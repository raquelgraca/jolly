class PlaySessionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.role == 'recreation worker'
  end

  def new?
    user.role == 'recreation worker'
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

  def my_play_sessions?
    user.role == 'recreation worker'
  end

end
