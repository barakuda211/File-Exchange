class ApplicationController < ActionController::Base
  # Devise override
  #def after_sign_in_path_for(resource)
  #  render :json => {:id => resource.id}.to_json
  #end
end
