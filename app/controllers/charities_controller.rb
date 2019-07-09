class CharitiesController < ApplicationController

    def index
        @charities = Charity.all 
        render json: @charities
    end

    def show #to be able to see one charity at a time 
        charity = Charity.find_by(id: params[:id])

        if charity 
            render json: user
        else
            render json: {
                error: 'Charity not found'
            }, status: 404
        end
    end
    
end
