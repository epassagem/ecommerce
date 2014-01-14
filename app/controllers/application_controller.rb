class ApplicationController < ActionController::Base
  before_action :authorize


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(client)
        new_order_path
  end


  protected

  def authorize
    if User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Please log in"      
    end

  end
end
