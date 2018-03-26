module UsersHelper

  def guest_user(with_retry = true)
    @cached_guest_user ||= User.find(session[:guest_user_id] ||= create_guest_user.id)
  end 

  private 

  def create_guest_user
    user = User.create(user_agent: SecureRandom.urlsafe_base64(32), counter: 0, first_visit: Time.now, recent_visit: Time.now)
    session[:guest_user_id] = user.id
  end
  
end
