require 'rails_helper'

RSpec.describe "/to_dos", type: :request do
  
  require 'rails_helper'

  let(:valid_attributes)do
    {
      task: Faker::Lorem.word,
      status: Faker::Lorem.word,
    }
  end

  let(:invalid_attributes) do
    {
      task: nil,
      status: Faker::Lorem.word
    }
  end

  let(:new_attributes) do
    {
      task: Faker::Lorem.word
    }
end
end
