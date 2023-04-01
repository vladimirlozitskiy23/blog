class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        render plain: params[:contact].inspect
    end
end
