class TodoSerializer < ActiveModel::Serializer
  attributes :description, :deadline, :status
end
