require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SpaceManagerUfpa
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    ENV['RAILS_ADMIN_THEME'] = 'rollincode'
<<<<<<< HEAD
    
    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = ["pt-BR"]
=======
>>>>>>> 0518f5caf45e10f8e393c91c996575f5baaf417c
    config.i18n.default_locale = :'pt-BR'
    
  end
end
