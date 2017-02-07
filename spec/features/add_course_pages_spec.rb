require 'rails_helper'

describe "the add a new course process" do
  it "adds a new course" do
    visit courses_path
    click_on "Add Course"
    fill_in 'Name', :with => "Ruby"
    click_on "Create Course"
    expect(page).to have_content "Courses"
  end
  it "gives error when course name isn't entered" do
    visit new_course_path
    click_on "Create Course"
    expect(page).to have_content 'errors'
  end
end
