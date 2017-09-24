Rails.application.config.middleware.use OmniAuth::Builder do
  provider :wechat, ENV["wx143410afa1c51029"], ENV["794f549f4ee8b6a8038c8c27a5150f95"]
end
