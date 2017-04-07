class Person < ApplicationRecord
  has_many :enrollements, through: :enrollments
  validates :first_name, :last_name, :email, presence: true
  validates :first_name, :last_name, length: { maximum: 30 }
  validates :email, length: { maximum: 50 }
  validates :email, uniqueness: true
  validates :email, confirmation: { case_sensitive: false }
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  def to_s
    return first_name + ' ' + last_name
  end
end
