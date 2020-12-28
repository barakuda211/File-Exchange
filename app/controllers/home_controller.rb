class HomeController < ApplicationController

  before_action :authenticate_user!

  def index
    @files = current_user.files
  end



end