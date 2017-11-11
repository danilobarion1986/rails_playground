class UserCollectionSerializer < ActiveModel::Serializer
  attributes :users

  def users
  	object.map { |user| UserSerializer.new(user) }
  end
end
