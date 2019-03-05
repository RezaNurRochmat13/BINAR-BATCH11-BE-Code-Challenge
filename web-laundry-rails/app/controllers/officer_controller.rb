class OfficerController < ApplicationController

    def index
        @officer = Officer.all
    end

    def show
        @detailOfficer = Officer.find(params[:id])
    end

    def new
        @officer = Officer.new
    end

    def create
        @officer = Officer.new(officer_params)

        if @officer.save
            redirect_to :controller => 'officer', :action => 'index'
        end
    end

    private
    def officer_params   
        params.require(:officer).permit(:officer_name, :officer_address, 
        :officer_phone, :officer_gender) 
    end
end
