class ProfilesController < ApplicationController
    before_filter :authenticate_user!
    
    def index
        @user = User.find(params[:id])
    end
    
    def show
        @user = User.find(params[:id])
    end
end
