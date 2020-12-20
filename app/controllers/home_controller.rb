class HomeController < ApplicationController

  before_action :authenticate_user!

  def index
    @files = UserFile.all
  end



end