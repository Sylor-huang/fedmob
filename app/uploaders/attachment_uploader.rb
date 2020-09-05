class AttachmentUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model&.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png svg ico bmp tif rtf pdf doc docx xls xlsx html txt epub mobi rar zip 7z ppt wps gz pptx chm htm)
  end

end
