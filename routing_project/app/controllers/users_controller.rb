class UsersController < ApplicationController
	def index
		@users = User.all
		render json: @users
	end

	def create
		@user = User.new(user_params)
		if @user.save
			render json: @user
		else
			render json: @user.errors.full_messages, status: :unprocessable_entity
		end
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			render json: @user
		else
			render plain: 'User does not exist'
		end
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
		  render json: @user
		else
			render json: @user.errors.full_messages, status: :unprocessable_entity
	end

  def user_params
		params.require(:user).permit(:username)
	end
end
