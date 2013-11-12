class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  rescue_from CanCan::AccessDenied do |exception|
    if Rails.env.development? || Rails.env.test?
      flash[:error] = "Access denied on #{exception.action} #{exception.subject.inspect}"
      Rails.logger.info "Access denied on #{exception.action} #{exception.subject.inspect}"
    else
      flash[:error] = "Access Denied"
    end
    redirect_to root_url
  end
  
  private
  
    def lock_out
      if !signed_in?
        redirect_to root_url
        flash[:error] = "You must be logged in to access this resource."
      end
    end
end
