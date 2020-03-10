class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
#need to fix create and new
  def create?
    true
  end

  def new?
   true
  end

  def index?
    record.user == user || record.play_session.user == user
  end

  def show?
    record.user == user || record.play_session.user == user
  end

  def update?
    record.user == user && record.play_session.appointment.start_time - 3.hours > DateTime.now
  end

  def destroy?
    record.user == user && record.play_session.created_at - 15.minutes > DateTime.now
  end

end
