require 'rails_helper'

RSpec.describe "to_dos/edit", type: :view do
  let(:to_do) {
    ToDo.create!(
      task: Faker::Lorem.sentence,
      states: Faker::Lorem.word
    )
  }

  before(:each) do
    assign(:to_do, to_do)
  end

  it "renders the edit to_do form" do
    render

    assert_select "form[action=?][method=?]", to_do_path(to_do), "post" do

      assert_select "input[name=?]", "to_do[task]"

      assert_select "input[name=?]", "to_do[states]"
    end
  end
end
