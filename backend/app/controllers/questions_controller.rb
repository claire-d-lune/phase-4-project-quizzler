class QuestionsController < ApplicationController

    def index
        render json: Question.all, status: :ok
    end

    def show 
        question = Question.find(params[:id])
        render json: question, status: :ok
    end

    def create
        q = Question.create(question_params)
        render json: q, status: :created
    end
    
    private

    def question_params 
        params.permit(:id, :category, :type, :difficulty,:question, :correct_answer, :incorrect_answers)
    end
end
