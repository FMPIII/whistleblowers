require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  # 	one = users(:one)
  # 	puts "Hello #{one.name}"

  #   assert true
  # end
  # test "the false" do
  # 	assert false
  # end

  # test "fail" do
  # 	blargh
  # end

  test "user email never nil" do
  	u = User.new
  	u.email = nil
  	assert_not u.save, "User emails should never be nil"
  end
end
