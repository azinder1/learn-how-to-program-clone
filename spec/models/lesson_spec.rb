require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :day }
  it { should validate_presence_of :week }
  it { should belong_to :course }
end
