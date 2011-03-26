class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :signed_in?

  protected
    def authorization_required!
      redirect_to "/auth/remote" unless signed_in?
    end

    def current_user
      @current_user ||= session[:user_id]
    end

    def signed_in?
      !!current_user
    end

    def current_user=(user)
      @current_user = user
      session[:user_id] = user
    end
end
