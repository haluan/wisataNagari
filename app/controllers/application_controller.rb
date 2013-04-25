class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  #before_filter :authorize
  
  protected
      def authorize
        unless Admin.find_by_id(session[:admin_id])
          redirect_to root_path, :notice => "Please log in"
      end
  end
end
