class Administrators::AdministratorsController < ApplicationController
  before_filter :require_user
  
  filter_access_to :all
  
  protected 
  
  def permission_denied
    flash[:error] = "You do not have permission to view this page"
    respond_to do |format|
      format.html { redirect_to home_url_for(current_user) }
      format.xml { head :unauthorized }
      format.js { head :unauthorized }
    end
  end
end