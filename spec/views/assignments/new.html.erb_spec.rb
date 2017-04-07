require 'rails_helper'

RSpec.describe "assignments/new", type: :view do
  before(:each) do
    assign(:assignment, Assignment.new(
      :title => "MyString",
      :enunciado => "MyString",
      :course_id => nil
    ))
  end

  it "renders new assignment form" do
    render

    assert_select "form[action=?][method=?]", assignments_path, "post" do

      assert_select "input#assignment_title[name=?]", "assignment[title]"

      assert_select "input#assignment_enunciado[name=?]", "assignment[enunciado]"

      assert_select "input#assignment_course_id_id[name=?]", "assignment[course_id_id]"
    end
  end
end
