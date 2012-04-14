class ApplicationController < ActionController::Base
  helper_method :home_url_for
  protect_from_forgery
  
  protected
  
    def permission_denied
      flash[:error] = "Sorry, you do not have permission to view that page."
      redirect_to login_url
    end
  
    def home_url_for(user)
      return root_url if user.nil?
      user.is_client? ? clients_root_url : (user.is_owner? ? owners_root_url : coaches_root_url) 
    end
  
  private
  
    def not_authenticated
      redirect_to login_url, :alert => "You must login to view that page."
    end
end
