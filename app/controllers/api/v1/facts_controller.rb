class Api::V1::FactsController < ApplicationController
    before_action :find_fact, only: [:show, :update, :destroy]

    def index
        @facts = Fact.all
        render json: @facts
    end

    def show 
        @fact = Fact.find(params[:id])
        render json: @fact
    end

    def create
        @fact = Fact.new(fact_params)
        if @fact.save
            render json: @fact
        else
            render error: {error: 'unable to create fact'}, status: 400
        end
    end

    def update
        @fact = Fact.find(params[:id])
        if @fact
            @fact.update(user_params)
            render json: {message: 'fact successfully updated'}, status: 200
        else
            render json: {error: 'unable to update fact'}, status: 400
        end
    end

    def destroy
        @fact = Fact.find(params[:id])
        if @fact
            @fact.destroy
            render json: {message: 'fact successfully deleted'}, status: 200
        else
            render json: {error: 'unable to delete fact'}, status: 400
        end
    end

    private

    def fact_params
        params.require(:fact).permit(:fact, :likes, :user_id)
    end

    def find_fact
        @fact = Fact.find(params[:id])
    end
end
