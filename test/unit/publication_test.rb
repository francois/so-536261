require 'test_helper'

class PublicationTest < ActiveSupport::TestCase
  should_have_many :citations
end
