ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

DatabaseCleaner.clean_with :truncation, except: %w(ar_internal_metadata)

class ActiveSupport::TestCase
  self.use_transactional_tests = false

  def setup
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end

end
