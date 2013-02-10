require File.expand_path("../boot", __FILE__)

require "action_controller/railtie"
require "active_resource/railtie"
require "sprockets/railtie"

if defined?(Bundler)
  Bundler.require(*Rails.groups(assets: %w(development test)))
end

module Clarity
  # Baseline configuration for this Rails app.
  #
  # Any environment-specific configuration is located under
  # `config/environments/<env>.rb` and takes precedence over values supplied
  # here.
  #
  # http://guides.rubyonrails.org/configuring.html
  class Application < Rails::Application
    # We store everything as UTF for our sanity; Anywhere we display a date/time
    # to a user should convert it into their local time zone.
    config.time_zone = "UTC"

    config.i18n.default_locale = :en
    # Fall back to the default locale if a translation isn't found
    config.i18n.fallbacks = true

    # UTF-8 everywhere avoids a lot of headache.
    config.encoding = "utf-8"

    # Sensitive request parameters that are filtered from logs.
    config.filter_parameters += [:password]

    config.assets.enabled = true
    # Bump this to expore all the assets.
    config.assets.version = "1.0"

    # `X-UA-Compatible: IE=Edge`
    config.action_dispatch.best_standards_support = :builtin
  end
end
