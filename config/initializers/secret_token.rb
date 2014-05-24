# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Assistant::Application.config.secret_key_base = '5bda64881b2941fb1731f4f463316acfbf896c1d2df0fc2229b05c292a8c2e88d471f252186c27e397a9e24bcee8709b3303a976cca584ffa2aa3929d8f65a51'
