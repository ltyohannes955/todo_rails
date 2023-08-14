class ToDo < ApplicationRecord
    validates :task, :states, presence: true
end
