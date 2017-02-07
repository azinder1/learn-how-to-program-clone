require 'rails_helper'

describe "the edit a course process" do
  it "edits a course" do
    course = Course.create(:name => "Coffee")
    visit course_path(course)
    click_on "Edit Course"
    fill_in "Name", :with => "Java"
    click_on "Update Course"
    expect(page).to have_content "Java"
  end
  it "deletes a course" do
    course = Course.create(:name => "Design")
    visit course_path(course)
    click_on "Delete Course"
    expect(page).to_not have_content "Design"
  end
end
