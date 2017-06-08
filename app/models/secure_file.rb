class SecureFile < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  validates :filename, presence: true, length: { in: 6..250 }
  validates :content_type, presence: true, confirmation: true

  scope :restricted, -> { where(restricted: true) }
  scope :unrestricted, -> { where(restricted: [nil,false]) }

  accepts_nested_attributes_for :owner


  ##
  # @param [ActionDispatch::Http::UploadedFile] upload_file
  def file=(upload_file)
    self.filename = "a#{SecureRandom.hex(31)}/#{upload_file.original_filename}"
    # store file
    fullpath = "#{Rails.root}/public/files/#{filename}"
    # make sure dir exists
    FileUtils.mkdir_p(File.dirname(fullpath))
    FileUtils.cp(upload_file.path,fullpath)
    self.content_type= upload_file.content_type
  end

end
