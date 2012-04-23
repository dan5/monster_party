ENV['TWITTER_KEY'] = "cHLNdPK4BPoXtghkowfjLw"
ENV['TWITTER_SECRET'] = "snrURdBxphS3BOg4HK5ozBRzUThm6fGUTpwyG55NlSE"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
