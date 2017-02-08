class Lesson < ActiveRecord::Base
  belongs_to :week
  validates :name, :presence => true
  validates :day, :presence => true
end
