require 'rails_helper'

describe Enrollment, '.create', :type => "request=" do

  let(:new_course) {build(:course)}
  let(:new_student_1) {build(:person)}
  let(:new_student_2) {build(:person)}
  let(:enrollment1) {build(:enrollment)}
  let(:enrollment2) {build(:enrollment)}
  it 'creates a new enrollment' do
      new_course.enrollments.append(enrollment1)
      new_course.enrollments.append(enrollment2)

      expect(new_course.enrollments.length).to be <= new_course.quota

  end
end
