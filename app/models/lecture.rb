class Lecture < ActiveRecord::Base
  mount_uploader :video, VideoUploader
  mount_uploader :img, ArquivoUploader
  

end
