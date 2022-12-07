class AttemptsController < ApplicationController

    def index 
        render json: Attempt.all, status: :ok
    end

    def show 
        render json: @attempt, status: :ok
    end

    def destroy
        @attempt.destroy
        head :no_content
    end

    def update
        @attempt.update!(attempt_params)
        render json: @attempt, status: :accepted
    end

    def create 
        attempt = Attempt.create!(attempt_params)
        render json: attempt, status: :created
    end

    private

    def select_attempt
        @attempt = Attempt.find(params[:id])
    end

    def attempt_params
        params.permit(:title, :description)
    end
end
