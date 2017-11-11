class UserSerializer < ActiveModel::Serializer
  attributes :user_id, :user_name, :user_email
	attribute :user_login, if: :show_login?

	def show_login?
  	true
	end
end
