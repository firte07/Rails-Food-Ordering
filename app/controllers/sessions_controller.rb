class SessionsController < ApplicationController

  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      perform_log_in(user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render('new')
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to(root_url)
  end

  private

  def perform_log_in(user)
    reset_session
    log_in(user)
    params[:session][:remember_me] == '1' ? remember(user) : forget(user)
    redirect_to(pages_home_path)
  end
end
