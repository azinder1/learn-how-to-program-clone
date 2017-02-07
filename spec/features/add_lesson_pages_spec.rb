require "rails_helper"


describe "the add lesson process" do
  it "adds a new lesson" do
    course = Course.create(:name => "Rails")
    visit course_path(course)
    click_on "Add Lesson"
    fill_in "Name", :with => "Objects"
    fill_in "Week", :with => "3"
    fill_in "Day", :with => "Monday"
    click_on "Create Lesson"
    expect(page).to have_content 'Rails'
  end
  it "gives error when trying to add a lesson without all fields filled out" do
    course = Course.create(:name => "Rails")
    visit course_path(course)
    click_on "Add Lesson"
    click_on "Create Lesson"
    expect(page).to have_content "errors"
  end
end
