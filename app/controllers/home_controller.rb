class HomeController < ApplicationController

  before_action :authenticate_user!

  def index
    @files = UserFile.where("id_user = ?", current_user.id)
  end



end