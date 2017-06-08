class SecureFilesController < ApplicationController
  def index
    @files = SecureFile.unrestricted.last(100)
  end

  def new
    @file = SecureFile.new.tap{|file| file.build_owner }
  end

  def create
    @file = SecureFile.new(secure_file_params)

    if @file.save
      redirect_to secure_files_path
    else
      render action: :new
    end

  end

  def download
    send_file "#{Rails.root}/public/files/#{params[:full_filename]}", disposition: 'inline'
  end

  private

  def secure_file_params
    params.require(:secure_file).permit(
      :file, :name, :content_type_confirmation, :restricted, owner_attributes: [
        :name, :email, :password
      ]
    )
  end
end
