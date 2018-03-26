class UsersController < ApplicationController
  include UsersHelper

  def index
    guest_user
    if @cached_guest_user
      @cached_guest_user.increment!(:counter)
      @cached_guest_user.update_attributes(:recent_visit => Time.now)
    end
    @users = User.all 
  end
end
