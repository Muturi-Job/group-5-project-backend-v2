class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_username, :rating, :description
end
