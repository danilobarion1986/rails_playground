class User < ApplicationRecord
	include ActiveModel::Serialization

	alias_attribute :user_id, :id
	alias_attribute :user_name, :name
	alias_attribute :user_login, :login
	alias_attribute :user_email, :email
end
