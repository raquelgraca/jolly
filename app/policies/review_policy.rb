class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    ["parent", "play space owner"].include?(user.role)
  end

  def create?
    new?
  end

  def show?
    true
  end

  def edit?
    record.user == user
  end

  def update?
    edit?
  end
end
