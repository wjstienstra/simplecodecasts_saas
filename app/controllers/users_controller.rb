class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def index
       @user = User.includes(:profile)
    end
    
    def show
        @user = User.find( params[:id] )
    end
end