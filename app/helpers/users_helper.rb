module UsersHelper
  
  def full_name(user)
    user.first_name + " " + user.surname
  end
end
