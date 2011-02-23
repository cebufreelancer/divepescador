# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dayb_session',
  :secret      => 'b6c5778de0aab023226f063e6fc169f0a3d09b2a9a0340897422410511326240cccc07683d79fc754d10828f4e9247a33bb52b0642a64b8775ef4632e28feab0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
