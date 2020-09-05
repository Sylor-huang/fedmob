class Document < ApplicationRecord
  
  attr_accessor :upload_file,:original_filename
  mount_uploader :file_name, AttachmentUploader
end
