class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id,  :rating, :description, :recipe_id

  belongs_to :user
  belongs_to :recipe
end
