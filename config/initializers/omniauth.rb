Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['EYE_GITHUB_CLIENT_ID'], ENV['EYE_GITHUB_CLIENT_SECRET'], scope: "user:email,user:follow"
end