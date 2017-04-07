require 'rails_helper'

RSpec.describe "assignments/show", type: :view do
  before(:each) do
    @assignment = assign(:assignment, Assignment.create!(
      :title => "Title",
      :enunciado => "Enunciado",
      :course_id => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Enunciado/)
    expect(rendered).to match(//)
  end
end
