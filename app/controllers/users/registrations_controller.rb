class Users::RegistrationsController < Devise::RegistrationsController
  layout "hidenav", except: [:edit]
end
