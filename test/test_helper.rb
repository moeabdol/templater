require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "capybara/rails"
require "capybara/minitest"

class ActionDispatch::IntegrationTest
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
