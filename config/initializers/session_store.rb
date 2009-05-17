# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sleep_session',
  :secret      => 'a932517066e5c2bd108060668c750fb4782e9fdd249c55e5b130bd53b5a23a477da2b77eded6979de58df96bc02744705e7233481477b3777109fbc5d5450437'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
