require 'rails_helper'

RSpec.describe ToDo, type: :model do
  attributes = [
    { task: %i[presence] },
    { states: %i[presence] }
  ]
  include_examples('model_shared_spec', :to_do, attributes)

  # subject { create(:to_do) }
  

  # it { is_expected.to(validate_presence_of(:task)) }
  # it { is_expected.to(validate_presence_of(:states)) }
end