require 'shoulda'
require 'shoulda/action_controller/matchers'
require 'shoulda/action_controller/macros'

ActiveSupport::TestCase.send :include, Shoulda::ActionController::Matchers
ActiveSupport::TestCase.send :extend, Shoulda::ActionController::Macros

require 'shoulda/active_record/assertions'
require 'shoulda/action_mailer/assertions'

module ActionController #:nodoc: all
  module Integration
    class Session
      include Shoulda::Assertions
      include Shoulda::Helpers
      include Shoulda::ActiveRecord::Assertions
      include Shoulda::ActionMailer::Assertions
    end
  end
end

if defined?(ActionController::TestCase)
  class ActionController::TestCase
    def subject
      @controller
    end
  end
end
