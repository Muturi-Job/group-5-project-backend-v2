class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :procedure, :user_id, :image_url
  has_many :tags
end
