class ReceivesController < ApplicationController
    before_action :authenticate_user!
    
    def search
        require 'mail'
        Mail.defaults do
          retriever_method :pop3, {
            :address => "pop.gmail.com",
            :port => 995,
            :user_name => 'kazuki118050@gmail.com',
            :password => 'Kazuki8050',
            :enable_ssl => true
          }
        end
        @mailbox = Mail.find(count: 10, order: :desc, what: :all)
        # @mailbox=Mail.find(text_part: params[:q])
        # @mailbox.body=@mailbox.body.decode.encode("UTF-8")
        render "index"
    end
end
