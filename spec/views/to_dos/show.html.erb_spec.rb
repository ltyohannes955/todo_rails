require 'rails_helper'

RSpec.describe "to_dos/show", type: :view do
  before(:each) do
    assign(:to_do, ToDo.create!(
      task: "Task",
      states: "States"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Task/)
    expect(rendered).to match(/States/)
  end
end
