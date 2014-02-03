class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :authorize


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(client)
        new_order_path
  end


  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :doc1, :doc2, :phone_area_code, :phone_number, :cell, :date_born, :sex, :news, :street, :number, :complement, :district, :city, :state, :postal_code, :email, :password, :password_confirmation, :remember_me) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :doc1, :doc2, :phone_area_code, :phone_number, :cell, :date_born, :sex, :news, :street, :number, :complement, :district, :city, :state, :postal_code, :email, :password, :password_confirmation, :current_password) }
    end
    def authorize
      if User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Please log in"      
      end
    end
end

