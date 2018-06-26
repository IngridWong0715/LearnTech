class Topic < ApplicationRecord
  has_many :todos
  has_many :moocs
  has_many :books

  validates :name, presence: true
end
