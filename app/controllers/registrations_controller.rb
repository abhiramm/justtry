class RegistrationsController < Devise::RegistrationsController
  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :email, :password, :password_confirmation)}
  end
  
  def after_sign_up_path_for(resource)
    edit_user_registration_path
  end
  
  #def after_update_path_for(resource)
   # performer_path(:id => current_user.performer)
  #end
  
  
  

end
