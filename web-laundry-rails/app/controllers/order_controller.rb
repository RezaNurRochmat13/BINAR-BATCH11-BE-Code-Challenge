class OrderController < ApplicationController

    def index
        @orders = OrderReceived.
        select('members.member_name, order_receiveds.order_money, order_receiveds.order_date_start, order_receiveds.order_date_end').
        joins("INNER JOIN members ON members.id=order_receiveds.member_id")
    end

    def show
        @orders = OrderReceived.find(params[:id])
    end

    def new
        @member = Member.all
        @officer = Officer.all
        @order = OrderReceived.new
        
    end

    def createOrder
        @orders = OrderReceived.create(order_params)

        if @orders.save
            redirect_to :index
        end
    end

    private
    def order_params   
        params.require(:order_received).permit(:order_scales_laundry, 
        :order_date_start, :order_date_start, :member_id, :officer_id).merge(order_code: 'MEMBER-' + SecureRandom.alphanumeric) 
    end 
end
