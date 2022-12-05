class QuizzesController < ApplicationController
    before_action :select_quiz, only: [:show, :destroy, :update]

    def index 
        render json: Quiz.all, status: :ok
    end

    def show 
        render json: @quiz, status: :ok
    end

    def destroy
        @quiz.destroy
        head :no_content
    end

    def update
        @quiz.update!(quiz_params)
        render json: @quiz, status: :accepted
    end

    def create 
        quiz = Quiz.create!(quiz_params)
        render json: quiz, status: :created
    end

    private

    def select_quiz
        @quiz = Quiz.find(params[:id])
    end

    def quiz_params
        params.permit(:title, :description)
    end
end
