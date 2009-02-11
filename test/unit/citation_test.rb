require 'test_helper'

class CitationTest < ActiveSupport::TestCase
  should_belong_to :referral
  should_belong_to :referrer
end
