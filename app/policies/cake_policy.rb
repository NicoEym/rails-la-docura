class CakePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @scope.where(user_id: admin_id, on_the_menu: true)
    end

    def admin_id
      User.find_by(admin: true).id
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def index?
    true
  end

  def update?
    user_is_admin_or_record_user?
  end

  def destroy?
    true
  end

  private

  def user_is_admin?
    @user.admin?
  end

  def user_is_admin_or_record_user?
    user_is_admin?|| @record.user == @user
  end
end
