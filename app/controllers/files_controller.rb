class FilesController < ApplicationController
  @msg = ' '

  def index
  end

  def show
    @file = current_user.files.find(params[:id])
    @size = @file.byte_size.to_s + ' B'
    if @file.byte_size > 1024
      @size = (@file.byte_size*1.0/1024).round(2).to_s + ' KB'
    end
    if @file.byte_size > 1024*1024
      @size = (@file.byte_size*1.0/1024/1024).round(2).to_s + ' MB'
    end
  end

  def destroy
    current_user.files.find(params[:id]).purge
    redirect_to root_path
  end

  def create
    @file = file_params[:files]

    current_user.files.attach file_params[:files]

    if current_user.files.last.byte_size < 1024*1024*5
      redirect_to  file_path current_user.files.last
    else
      current_user.files.last.purge
      @msg = "File size must be less than 5MB!"
      render 'new'
    end
  end

  private

  def file_params
    params.require(:data).permit(:files )
  end


end

#**************
# {"data"=>#<ActionDispatch::Http::UploadedFile:0x000000000d8e9790
# @tempfile=#<Tempfile:C:/Users/barakuda/AppData/Local/Temp/RackMultipart20201226-13732-11wl5xh.txt>,
# @original_filename="temp.txt", @content_type="text/plain",
# @headers="Content-Disposition: form-data; name=\"user_file[data]\"; filename=\"temp.txt\"\r\nContent-Type: text/plain\r\n">}
# **************
#

