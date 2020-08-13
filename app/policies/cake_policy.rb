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
    true
  end

  def destroy?
    true
  end

  private

  def user_is_admin?
    @user.admin?
  end
end
