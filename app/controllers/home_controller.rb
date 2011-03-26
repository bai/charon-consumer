class HomeController < ApplicationController
  def index
     @username = session[:charon_user]
  end
end
