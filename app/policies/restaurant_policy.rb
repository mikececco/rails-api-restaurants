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
end
