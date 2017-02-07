require "rails_helper"


describe('edit path for lessons') do
  it('it can edit a lesson') do
    course = Course.create(:name => "Ruby")
    lesson = Lesson.create(:name => "Objects", :week => "2", :day => "Monday", :course_id => course.id)
    visit course_path(course)
    click_on "Objects"
    click_on "Edit Lesson"
    fill_in "Name", :with => "Functional Programming"
    click_on "Update Lesson"
    expect(page).to have_content("Ruby")
  end
end

describe("delete path for a particular lesson") do
  it "can delete a lesson" do
    course = Course.create(:name => "Ruby")
    lesson = Lesson.create(:name => "Objects", :week => "2", :day => "Monday", :course_id => course.id)
    visit course_path(course)
    click_on "Objects"
    click_on "Delete Lesson"
    expect(page).to_not have_content("Objects")
  end
end
