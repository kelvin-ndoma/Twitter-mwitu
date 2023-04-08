class TweetSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :content, :likes
end
