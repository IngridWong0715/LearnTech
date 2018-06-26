class Book < ApplicationRecord
  belongs_to :topic

  validates :title, :author, presence: true
end
