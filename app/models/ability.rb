class Ability
  include CanCan::Ability

  def initialize(user)
    # permissions for every user, even if not logged in
    #
    can :read, :all
    can :manage, :Article
    # additional permissions for logged in users (they can manage their posts)
    if user.present?
      can :manage, Post, user_id: user.id
      # additional permissions for administrators
      if user.admin?
        can :manage, :all
      end
    end
  end
end
