class AddressPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
      record.address_holder_type == "PlaySpace" || record.address_holder == user
  end

  def new?
    ["User", "PlaySpace"].include?(record.address_holder_type)
  end

  def create?
    new?
  end

  def edit?
    record.address_holder == user || record.address_holder.user == user
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
