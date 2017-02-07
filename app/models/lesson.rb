class Lesson < ActiveRecord::Base
  belongs_to :course
  validates :name, :presence => true
  validates :week, :presence => true
  validates :day, :presence => true
end
