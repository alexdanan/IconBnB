class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index?
      true
    end

    def show?
      true
    end

    def create?
      true
    end

    def new?
      create?
    end

    def destroy?
      user.admin || record.user == user
    end
  end
end
