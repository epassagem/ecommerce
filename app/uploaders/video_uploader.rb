# encoding: utf-8

class VideoUploader < CarrierWave::Uploader::Base
  

   include CarrierWave::RMagick
  
  #storage :file
   storage :fog

  include CarrierWave::MimeTypes
  process :set_content_type


end
