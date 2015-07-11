class UsersController < ApplicationController

def new
end

def create
	@user = User.new()
end

def show
  @users = User.all
end

def forward_user
  user_id = session[:current_user_id] = params[:user_id]
  User.increment_counter :clicked_invite, user_id
  redirect_to action:'rsvp'
end

def rsvp
  logger.debug "Current session user: #{session[:current_user_id]}"
  @user = User.find_by_id(session[:current_user_id])
end

def rsvp_save
  params[:response]
  logger.debug "Person attributes hash: #{params[:response]}"
  user = User.find_by_id(session[:current_user_id])
  if params[:response] == 'attending'
    user.rsvp = true
  else
    user.rsvp = false
  end
  user.save!
  redirect_to controller:'welcome', action:'index'
end

def send_invites
  if request.get?
  else
    User.send_invites
  end
end

end
