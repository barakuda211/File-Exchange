class FilesController < ApplicationController
  before_action :set_us_file#, only: [:show, :download]

  def index
  end

  def show
  end

  def new

  end

  def create
    x = file_params
    puts "******************"
    puts x
    puts "******************"

    @us_file = UserFile.create(x)
    @us_file.id_user = current_user.id
    if @us_file.save
      #ok!
      redirect_to 'home/index'
    else
      render "new"
      #error!
    end
  end

  private

  def file_params
    params.require(:user_file).permit(:data )
  end

  def set_us_file
    @us_file = UserFile.new()
    @us_file.id_user = current_user.id
  end

end


#Parameters: {"authenticity_token"=>"0BrnFgT4Jptg4xOHI9SqHEK+1INi03uvCOdeXQfdAlttc2MBu+YMKSUqLfWZKOEc9rSQXEviZOPmyTZ2b+zH9w==",
# "file"=>{"file"=>#<ActionDispatch::Http::UploadedFile:0x000000000ba1ce20 @tempfile=#<Tempfile:C:/Users/barakuda/AppData/Local/Temp/RackMultipart20201220-13132-13gbfc4.png>, @original_filename="green.png", @content_type="image/png", @headers="Content-Disposition: form-data; name=\"file[file]\"; filename=\"green.png\"\r\nContent-Type: image/png\r\n">},
# "commit"=>"Save File"}           "file"=>{"image"=>[#<ActionDispatch::Http::UploadedFile:0x000000000c4915b8 @tempfile=#<Tempfile:C:/Users/barakuda/AppData/Local/Temp/RackMultipart20201220-7792-1wia93y.png>, @original_filename="blue.png", @content_type="image/png", @headers="Content-Disposition: form-data; name=\"file[image][]\"; filename=\"blue.png\"\r\nContent-Type: image/png\r\n">]}, "commit"=>"Save File"}
