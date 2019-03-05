class MemberController < ApplicationController

    def index
        @allMembers = Member.all
    end

    def show
        @detailMember = Member.find(params[:id])
    end

    def new
        @member = Member.new
    end

    def create
        @member = Member.new(member_params)

        if @member.save
            flash[:notice] = 'Member was added'   
           redirect_to :controller => 'member', :action => 'index'
        
        else
            flash[:error] = 'Failed create member'   
            render :new
        end
    end

    def edit
        @member = Member.find(params[:id])
    end

    def update
        @member = Member.find(params[:id])

        if @member.update_attributes(update_params)
            flash[:notice] = 'Member was updated'   
            redirect_to :controller => 'member', :action => 'index'
        else
            flash[:error] = 'Failed update member'   
            render :edit
        end
    end

    def destroy
        @member = Member.find(params[:id])

        if @member.destroy
            flash[:notice] = 'Member was deleted'
            redirect_to :controller => 'member', :action => 'index'   
        end
    end

    private
    def member_params   
        params.require(:member).permit(:member_name, :member_address, 
        :member_phone, :member_status).merge(member_code: 'MEMBER-' + SecureRandom.alphanumeric) 
    end   

    private
    def update_params   
        params.require(:member).permit(:member_name, :member_address, 
        :member_phone, :member_status) 
    end
end
