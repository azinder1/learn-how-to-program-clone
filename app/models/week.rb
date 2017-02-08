class Week < ActiveRecord::Base
  has_many :lessons
  belongs_to :course
  validates :objective, :presence => true
end
