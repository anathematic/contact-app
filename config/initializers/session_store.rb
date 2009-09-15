# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_contact-app_session',
  :secret      => 'a68477458da07f88a88c27e3ee8c97fd0de7598e12080a2d2c192887e7194f7e92fcb8cbdbbb9b8f7b0a425d237eff4e7e79b80057cd3b9387349e12a53a92c2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
