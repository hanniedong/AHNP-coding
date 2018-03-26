class UsersController < ApplicationController
  include UsersHelper

  def index
    guest_user
    @users = User.all 
    if @cached_guest_user
      @cached_guest_user.increment!(:counter)
      @cached_guest_user.update_attributes(:recent_visit => Time.now)
    end
  end

  def fetch_users 
    @users = User.all
    p @users
  end 

end
