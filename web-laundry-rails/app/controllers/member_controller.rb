class MemberController < ApplicationController

    def showAllMembers
        render 'member/list-member'
    end
end
