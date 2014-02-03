CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAJTIWQVH554WDC33Q',       # required
    :aws_secret_access_key  => '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',       # required
    #:region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'escoladainteligencia'                     # required
  #config.fog_host       = 'http://localhost:3000/lectures'
  # optional, defaults to nil
  #config.fog_authenticated_url_expiration = 60
  config.fog_public     = false                                   # optional, defaults to true
  #config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end