require 'rails_helper'

describe Course, '.create', :type => "request=" do
  let(:new_course) {build(:course)}
  let(:new_teacher) {build(:person)}
  it 'creates a course with a designated teacher' do

    new_course.teacher = new_teacher
    puts new_teacher.first_name
    expect(new_course.teacher.is_teacher).to eq true

  end

end
