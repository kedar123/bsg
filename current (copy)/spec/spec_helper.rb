# This file is copied to ~/spec when you run 'ruby script/generate rspec'
# from the project root directory.
ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'spec'
require 'spec/rails'

# Setting Default locale for testing
I18n.locale = 'en-US'

Spec::Runner.configure do |config|
  # If you're not using ActiveRecord you should remove these
  # lines, delete config/database.yml and disable :active_record
  # in your config/boot.rb
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
  config.fixture_path = RAILS_ROOT + '/spec/fixtures/'
  # == Fixtures
  #
  # You can declare fixtures for each example_group like this:
  #   describe "...." do
  #     fixtures :table_a, :table_b
  #
  # Alternatively, if you prefer to declare them only once, you can
  # do so right here. Just uncomment the next line and replace the fixture
  # names with your fixtures.
  #
  # config.global_fixtures = :table_a, :table_b
  #
  # If you declare global fixtures, be aware that they will be declared
  # for all of your examples, even those that don't use them.
  #
  # You can also declare which fixtures to use (for example fixtures for test/fixtures):
  #
  # config.fixture_path = RAILS_ROOT + '/spec/fixtures/'
  #
  # == Mock Framework
  #
  # RSpec uses it's own mocking framework by default. If you prefer to
  # use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  #
  # == Notes
  #
  # For more information take a look at Spec::Example::Configuration and Spec::Runner
  def upload_filepath_file(filename)
    upload(url_to_filepath_file(filename))
  end

  def url_to_attachment_file(filename)
    File.new(RAILS_ROOT + "/spec/attachments/#{filename}")
  end
end

MEGABYTE = 1024.0 * 1024.0

def actions
  %w(new edit create update destroy index show)
end

def crud
  %w{create read update delete}
end

def bytes_to_megabytes bytes
  bytes /  MEGABYTE
end

module ActiveRecord
  module Reflection
    class AssociationReflection
      def to_hash
        {
          :macro => @macro,
          :options => @options,
          :class_name => @class_name || @name.to_s.singularize.camelize
        }
      end
    end
  end
end

def get_sa_config
	if File.exist?("#{RAILS_ROOT}/config/customs/sa_config.yml")
		return YAML.load_file("#{RAILS_ROOT}/config/customs/sa_config.yml")
	else
		return YAML.load_file("#{RAILS_ROOT}/config/customs/default_config.yml")
	end
end

def get_configuration
  @configuration ||= get_sa_config
end

private

def read_fixture(action)
  IO.readlines("#{RAILS_ROOT}/spec/fixtures/mailers/user_mailer/#{action}")
end

