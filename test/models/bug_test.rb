require 'test_helper'

class BugTest < ActiveSupport::TestCase
  def setup
    @bug = Bug.create(name: "home fails", description: "Home fails", project: Project.first())
  end

  test "bug should be valid" do
    assert @bug.valid?
  end

  test "name should be present" do
    @bug.name = " "
    assert_not @bug.valid?
  end

  test "bug_must_belong_to_project" do
    @bug.save
    bug2 = Bug.new(name: "home fails")
    assert_not bug2.valid?
  end

  test "name should not be too long" do
    @bug.name = "a" * 200
    assert_not @bug.valid?
  end

  test "name should not be too short" do
    @bug.name = "aa"
    assert_not @bug.valid?
  end
end
