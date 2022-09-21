class MessagesController < ApplicationController
    
    def fed 
        fed_message = Message.where(title: 'Food').first

        render json: {fed_message: fed_message}
    end

end
