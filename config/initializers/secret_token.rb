# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Dispatcher::Application.config.secret_key_base = 'f9e1217f781583cd3ee5b41b01b58bf0f44e26c66a133556aeb016d7eb0c4b9afee471ac93e5a6e4025f9fc6e199f310a5c5f70962c2a926c5ba91f695f04617'
