class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @scope.all
    end
  end

  def create?
    true
  end

  def show?
    user_is_admin_or_record_user?
  end

  def index?
    user_is_admin?
  end

  def destroy?
    user_is_admin_or_record_user?
  end

  private

  def user_is_admin_or_record_user?
    @user.admin? || @record.user == @user
  end

  def user_is_admin?
    @user.admin?
  end
end
