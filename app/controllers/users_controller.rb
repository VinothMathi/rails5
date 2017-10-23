class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(ActiveSupport::HashWithIndifferentAccess.new(params[:user]))
		user.save
		redirect_to '/users'
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		user = User.find(params[:id])
		user.attributes = ActiveSupport::HashWithIndifferentAccess.new(params[:user])
		user.save
		redirect_to '/users'
	end
end