class PagesController < ApplicationController
  before_filter :authorization_required!

  def index
     @username =  self.current_user
  end
end
