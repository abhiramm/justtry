class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
  #def after_sign_in_path_for(resource)
    # performer_path(:id => current_user.performer)
  #end
  def layout_by_resource
    if user_signed_in?
      "admin"
    else
      "application"
    end
  end

end
