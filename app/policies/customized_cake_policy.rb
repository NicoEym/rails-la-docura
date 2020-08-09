class CustomizedCakePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def index?
    user_is_admin?
  end

  def update?
    true
  end

  def destroy?
    true
  end

  private

  def user_is_admin?
    @user.admin?
  end

  def user_record_or_user_is_admin?
    @user.admin? || @record == user
  end
end
