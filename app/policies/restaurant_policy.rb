class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all # to retrieve all as normal in Index
    end
  end

  def show?
    true
  end

  def update?
    # is record (restaurant) owner the current user? if so update allowed
    record.user == user
  end

  def create?
    # any logged in user - not disabled maybe? based on business
    !user.nil?
  end
end
