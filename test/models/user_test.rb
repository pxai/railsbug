require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create(username: "usernametest",
                          email: "usertest@user.com",
                          password: "1234")
  end

  test "user should be valid" do
    assert @user.valid?
  end

  test "username should be present" do
    @user.username = " "
    assert_not @user.valid?
  end

  test "email must be unique" do
    @user.save
    user2 = User.new(username: "usernametest", email: "usertest@user.com", password: "1234")
    assert_not user2.valid?
  end

  test "name should not be too long" do
    @user.username = "a" * 200
    assert_not @user.valid?
  end

  test "name should not be too short" do
    @user.username = "aa"
    assert_not @user.valid?
  end
end
