class MessagesController < ApplicationController
	def show
                @message = Message.find(params[:id])
        end
	def new
	end
	def create
		#render plain: params[:message].inspect
		@message=Message.new(message_params)
		@message.save
		render :url_got
	end
	def url_got
	end
	private
	    def message_params
		params.require(:message).permit(:title, :text)
	    end
end
