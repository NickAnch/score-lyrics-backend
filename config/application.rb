require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ScoreLyricsBackend
  class Application < Rails::Application
    config.api_only = true
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource(
          '*',
          headers: :any,
          methods: [:get, :patch, :put, :delete, :post, :options],
          expose: ['authorization']
        )
      end
    end

    config.middleware.use ActionDispatch::Flash

    config.generators do |g|
      g.test_framework  :rspec, :fixture => false
      g.view_specs      false
      g.helper_specs    false
    end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
