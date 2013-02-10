# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
if ENV["SIGNING_KEY"]
  Clarity::Application.config.secret_token = ENV["SIGNING_KEY"]

# If you don't provide `SIGNING_KEY` via your env, each time you restart the
# server you will be getting a new key - invalidating all previously signed
# cookies.
else
  Clarity::Application.config.secret_token = SecureRandom.hex(128)
end
