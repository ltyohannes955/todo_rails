require 'rails_helper'

RSpec.describe "to_dos/index", type: :view do
  before(:each) do
    assign(:to_dos, [
      ToDo.create!(
        task: "Task",
        states: "States"
      ),
      ToDo.create!(
        task: "Task",
        states: "States"
      )
    ])
  end

  it "renders a list of to_dos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Task".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("States".to_s), count: 2
  end
end
