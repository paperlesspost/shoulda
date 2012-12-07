require 'shoulda'
require 'shoulda/action_mailer/assertions'
require 'shoulda/action_mailer/matchers'

ActiveSupport::TestCase.send :include, Shoulda::ActionMailer::Assertions
ActiveSupport::TestCase.send :include, Shoulda::ActionMailer::Matchers
ActiveSupport::TestCase.send :extend, Shoulda::ActionMailer::Matchers
