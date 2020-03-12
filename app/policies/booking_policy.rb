class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.bookings
    end
  end
#need to fix create and new
  def create?
    true
  end

  def new?
   true
  end

  def show?
    record.user == user || record.play_session.user == user
  end

  def update?
    record.user == user && record.play_session.appointment.start_time - 3.hours > DateTime.now
  end

  def destroy?
    record.user == user && record.play_session.appointment.start_time - 2.minutes > DateTime.now
  end

end
