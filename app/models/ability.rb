class Ability
  include CanCan::Ability
  
  def initialize(user)
    if user.nil?
      cannot :manage, :all
    end
  end

end