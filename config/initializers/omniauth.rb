OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1068051537190-s6gvp5j2bsuk8l88nab035m842jr1lkv.apps.googleusercontent.com', 'UYLkcOASVkQfBnfxiErwXTZ9', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end	