require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Jolly
  class Application < Rails::Application
    config.generators do |generate|
          generate.assets false
          generate.helper false
          generate.test_framework  :test_unit, fixture: false
    end
    # Initialize configuration defaults for originally generated Rails version.
    config.autoloader = :classic

    # When assigning to a collection of attachments declared via `has_many_attached`, replace existing
    # attachments instead of appending. Use #attach to add new attachments without replacing existing ones.
    Rails.application.config.active_storage.replace_on_assign_to_many = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.i18n.default_locale = :pt

    #sidekiq
    config.active_job.queue_adapter = :sidekiq
    
    config.active_storage.queue = :low_priority


  end
end
