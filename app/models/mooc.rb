class Mooc < ApplicationRecord
  belongs_to :topic

  validates :title, :link, presence: true
end
