require 'rails_helper'

RSpec.describe "assignments/edit", type: :view do
  before(:each) do
    @assignment = assign(:assignment, Assignment.create!(
      :title => "MyString",
      :enunciado => "MyString",
      :course_id => nil
    ))
  end

  it "renders the edit assignment form" do
    render

    assert_select "form[action=?][method=?]", assignment_path(@assignment), "post" do

      assert_select "input#assignment_title[name=?]", "assignment[title]"

      assert_select "input#assignment_enunciado[name=?]", "assignment[enunciado]"

      assert_select "input#assignment_course_id_id[name=?]", "assignment[course_id_id]"
    end
  end
end
