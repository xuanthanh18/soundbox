OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '561749137291156', '856f6030177a989189834ba1d0775252', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end