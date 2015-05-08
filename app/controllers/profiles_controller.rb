class ProfilesController < ApplicationController
    before_filter :authenticate_user!, except: [:show]
    
    def index
        raise "You need a valid ID number"
    end
    
    def show
        @user = User.find(params[:id])
    end
end
