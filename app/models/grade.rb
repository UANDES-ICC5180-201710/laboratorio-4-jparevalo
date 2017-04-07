class Grade < ApplicationRecord
  belongs_to :assignment, foreign_key: 'assignment_id'
  belongs_to :person, foreign_key: 'person_id'

  validates :value, presence: true
  validates :value, numericality: true

end
