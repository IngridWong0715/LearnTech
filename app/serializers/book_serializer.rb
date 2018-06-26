class BookSerializer < ActiveModel::Serializer
  attributes :title, :author, :isbn
end
