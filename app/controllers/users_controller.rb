class UsersController < ApplicationController
	def index
		fields = [:user_id, :user_name, :user_email]
		
		if params[:incluir_login]
			fields.push(:user_login)
		end 
		
		@user = User.all
		# https://github.com/rails-api/active_model_serializers/blob/v0.10.6/docs/general/fields.md
		render json: @user, fields: fields
	end
end
