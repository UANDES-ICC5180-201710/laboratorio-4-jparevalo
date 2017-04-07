class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments
  belongs_to :teacher, class_name: 'Person', foreign_key: 'person_id'

  validates :title, :code, :quota, presence: true
  validates :title, length: { maximum: 30 }
  validates :code, length: { maximum: 10 }
  validates :title, :code, uniqueness: true
  validates :quota, numericality: true

  def to_s
    return title
  end
  def self.search(search)
    if search
      self.where("title like ?", "%#{search}%")
    else
      self.all
    end
end
  def self.get_students(id)
      students = ::Student.where("course_id == ?", id)
      return students
      end
  def name
      title
  end
end
