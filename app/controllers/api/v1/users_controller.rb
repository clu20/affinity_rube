class Api::V1::UsersController < ApplicationController

	#GET /users
	def index
		#@users = User.all
		render json: 'hello world'
	end

	#Get /user/[id]
	def show
		#@user = User.find(params[:id])
		render json: 'hello world'
	end
	
	#Post /users
	def create
		@user = User.new(user_params)
		if @user.save
			rendor json: @user
		else
			render error: {error: 'Unable to create user.'}, status: 400
		end
	end

end
