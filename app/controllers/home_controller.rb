class HomeController < ApplicationController
  def index
     @username = session[:cas_user]
  end
end
