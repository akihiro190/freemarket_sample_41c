require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)
require 'devise'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.

module FreemarketSample41c
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.available_locales = [:ja, :en]

  end

end


