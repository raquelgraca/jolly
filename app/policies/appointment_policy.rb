class AppointmentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.play_space.user == user
  end

  def index?
    user.role == 'recreation worker' || record.user == user
  end

  def show?
    user.role == 'recreation worker' || record.play_space.user == user
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

end
