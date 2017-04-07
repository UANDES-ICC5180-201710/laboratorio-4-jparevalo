require 'rails_helper'

RSpec.describe "grades/edit", type: :view do
  before(:each) do
    @grade = assign(:grade, Grade.create!(
      :person_id => nil,
      :assignment_id => nil,
      :value => 1
    ))
  end

  it "renders the edit grade form" do
    render

    assert_select "form[action=?][method=?]", grade_path(@grade), "post" do

      assert_select "input#grade_person_id_id[name=?]", "grade[person_id_id]"

      assert_select "input#grade_assignment_id_id[name=?]", "grade[assignment_id_id]"

      assert_select "input#grade_value[name=?]", "grade[value]"
    end
  end
end
