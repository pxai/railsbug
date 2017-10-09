require 'test_helper'

class BugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    #@bug = bugs(:one)
    @bug = Bug.create(name: "Superbug",
                      description: "Superdescription",
                      solution:"No solution",
                      project: Project.first())
  end

  test "should get index" do
    get bugs_url
    assert_response :success
  end

  test "should get new" do
    get new_bug_url
    assert_response :success
  end

  test "should create bug" do
    assert_difference('Bug.count') do
      post bugs_url, params: { bug: { description: @bug.description,
                                      name: @bug.name,
                                      solution: @bug.solution,
                                      project_id:@bug.project.id } }
    end

    assert_redirected_to bug_url(Bug.last)
  end

  test "should show bug" do
    get bug_url(@bug)
    assert_response :success
  end

  test "should get edit" do
    get edit_bug_url(@bug)
    assert_response :success
  end

  test "should update bug" do
    patch bug_url(@bug), params: { bug: { description: @bug.description,
                                          name: @bug.name,
                                          solution: @bug.solution } }
    assert_redirected_to bug_url(@bug)
  end

  test "should destroy bug" do
    assert_difference('Bug.count', -1) do
      delete bug_url(@bug)
    end

    assert_redirected_to bugs_url
  end
end
