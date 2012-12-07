require 'shoulda'
require 'shoulda/active_record/helpers'
require 'shoulda/active_record/matchers'
require 'shoulda/active_record/assertions'
require 'shoulda/active_record/macros'

ActiveSupport::TestCase.send :include, Shoulda::ActiveRecord::Helpers
ActiveSupport::TestCase.send :include, Shoulda::ActiveRecord::Matchers
ActiveSupport::TestCase.send :include, Shoulda::ActiveRecord::Assertions
ActiveSupport::TestCase.send :extend, Shoulda::ActiveRecord::Macros
