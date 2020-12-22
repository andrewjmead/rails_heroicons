require 'test_helper'

class RailsHeroicons::Test < ActiveSupport::TestCase
  test 'should return helper text' do
    assert_equal 'From heroicon helper!', Class.new.extend(RailsHeroicons::ViewHelpers).heroicon
  end
end
