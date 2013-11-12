class Ability
  include CanCan::Ability
  
  def initialize(user)
    
    if user.role.title = "ADMINISTRATOR"
      can :manage, :all
    end
  end
  
end