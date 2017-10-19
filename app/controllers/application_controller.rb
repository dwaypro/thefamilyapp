class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  	def after_sign_in_path_fir(resource)
  		profile_path(current_user.id)
  	end
end
