class Assignment < ApplicationRecord
  belongs_to :course, foreign_key: 'course_id'

  validates :title, :enunciado, presence: true
  validates :title, length: { maximum: 30 }

end
