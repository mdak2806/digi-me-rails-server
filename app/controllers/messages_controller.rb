class MessagesController < ApplicationController
    
    def fed 
        fed_message = Message.where(title: 'Food').first

        render json: {fed_message: fed_message}
    end

    def drank 
        drank_message = Message.where(title: 'Drink').first

        render json: {drank_message: drank_message}
    end

    def sweets 
        sweets_message = Message.where(title: 'SWEEEEEEETS').first

        render json: {sweets_message: sweets_message}
    end


end
