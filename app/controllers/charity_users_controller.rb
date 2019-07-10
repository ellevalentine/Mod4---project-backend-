class CharityUsersController < ApplicationController
    before_action :find_charity_user, only: [:show]

    def index
        @charity_users = CharityUser.all
        render json: @charity_users
    end

    def show
        render json: @charity_user
    end 

    def new
        @charity_user = CharityUser.new
    end

    def create 
        @charity_user = CharityUser.new(charity_user_params)
        @charity_user.save

        user = User.find(params[:user_id])
        user.balance -= params[:donation]
        user.save 

        charity = Charity.find(params[:charity_id])
        charity.balance += params[:donation]
        charity.save
        
        render json: { 
            charity_user: @charity_user,
            user: user,
            charities: Charity.all
        }
    end 


    private 

    def charity_user_params
        params.require(:charity_user).permit(:user_id, :charity_id, :donation)
    end

    def find_charity_user
        @charity_user = CharityUser.find(params[:id])
    end
end
