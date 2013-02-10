Clarity::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Eager load everything
  config.preload_frameworks = true
  config.cache_classes      = true # No reloading
  config.dependency_loading = false

  # Removes `Rack::Lock` from the middleware stack.
  config.allow_concurrency = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Asset files that get precompiled when running `rake assets:precompile`
  config.assets.precompile += %w(base.css base.js vendor.js)
  # Compress JavaScripts and CSS
  config.assets.compress = true
  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = false
  # Generate digests for assets URLs
  config.assets.digest = true
  # CloudFront is configured to hit the live host for any cache misses
  config.action_controller.asset_host = "d3hz8273o5qmb9.cloudfront.net"

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify
end
