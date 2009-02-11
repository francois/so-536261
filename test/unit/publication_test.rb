require 'test_helper'

class PublicationTest < ActiveSupport::TestCase
  context "book references article" do
    setup do
      publications(:the_rails_way).referenced << publications(:backgroundrb)
    end

    should "have the book in the article's citations" do
      assert_equal [publications(:the_rails_way)], publications(:backgroundrb).citations
    end
  end
end
