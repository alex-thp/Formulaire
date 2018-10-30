class UserController < ApplicationController
	def index
    end
    def new
    	@user_for = User.new
    end

    def create
    	@username = params['username']
    	@email = params['email']
    	@bio = params['bio']
    	  user = User.new
    	  user.username = params['username']
    	  user.email = params['email']
    	  user.bio = params['bio']
    	  user.save
    	@user_for = User.new
    	@user_for.username = params[:username]
    	@user_for.save
    	@user_for.email = params['email']
    	@user_for.bio = params['bio']
    	@user_for.save
    	@username_for = params[:user][:username]
    end

    def update
    	@user_for = User.new(params[:user_for])
    end
end
