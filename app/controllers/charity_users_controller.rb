class CharityUsersController < ApplicationController
    before_action :find_charity_user, only: [:show]

    def show
        render json: @charity_user
    end 

    def new
        @charity_user = CharityUser.new
    end

    def create 
        @charity_user = CharityUser.new(charity_user_params)
        @charity_user.save
        render json: @charity_user
    end 


    private 

    def charity_user_params
        params.require(:charity_user).permit(:user_id, :charity_id, :donation)
    end

    def find_charity_user
        @charity_user = CharityUser.find(params[:id])
    end
end
