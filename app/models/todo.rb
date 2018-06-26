class Todo < ApplicationRecord
  belongs_to :topic

  validates :description, presence: true
end
