class Users::RegistrationsController < Devise::RegistrationsController
  layout "hidenav", except: [:edit]
  protected
  def account_update_params
    devise_parameter_sanitizer.sanitize(:account_update).merge(name: params[:user][:name])
  end
  def after_update_path_for(resource)
    edit_user_registration_path(resource)
  end
end
