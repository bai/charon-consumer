class SessionsController < ApplicationController
  def create
    self.current_user = request.env['omniauth.auth']['uid']
    redirect_to :controller => :pages, :action => :index
  end

  def logout
    self.current_user = nil
    redirect_to "http://127.0.0.1:9292/serviceLogout"
  end
end
