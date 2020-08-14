class CartPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @scope.where(user_id: @record.user.id)
    end
  end

  def create?
    true
  end

  def show?
    user_is_admin_or_record_user?
  end

  def update?
    user_is_admin_or_record_user?
  end

  def destroy?
    user_is_admin_or_record_user?
  end

  private

  def user_is_admin_or_record_user?
    @user.admin? || @record.user == @user
  end
end
