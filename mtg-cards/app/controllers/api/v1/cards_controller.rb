module Api::V1
    class CardsController < ApplicationController

        def index
            @cards = Card.all
            render json: @cards
        end

        def show
            @card = Card.find(params[:id])
            render json: @card
        end

        def create
            @card = Card.create(card_params)
            render json: @card
        end

        def delete_all
            Card.delete_all
            @card = Card.new
            render json: @card
        end

        private

        def card_params
            params.require(:card).permit(:name, :multiverseid, :url, :deck_id)
        end
    end
end