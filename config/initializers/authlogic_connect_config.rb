case Rails.env
  when "development" then AuthlogicConnect.config = YAML.load_file("config/authlogic.yml")
  when "production" then
    AuthlogicConnect.config = {
      :connect => {
        :twitter => {
          :key => ENV["CONNECT_TWITTER_KEY"],
          :secret => ENV["CONNECT_TWITTER_SECRET"],
          :label => "Twitter"
        },
        :facebook => {
          :key => ENV["CONNECT_FACEBOOK_KEY"],
          :secret => ENV["CONNECT_FACEBOOK_SECRET"],
          :label => "Facebook"
        },
        :google => {
          :key => ENV["CONNECT_GOOGLE_KEY"],
          :secret => ENV["CONNECT_GOOGLE_SECRET"],
          :label => "Google"
        }
      }
    }
end
