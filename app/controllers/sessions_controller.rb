class SessionsController < ApplicationController
    def new
    end
    
    def create
        #로그인 상태로 만들기!
        person = User.where(email: params[:email], password: params[:password]).take
            unless person.nil?
                #로그인
                session[:user_id] = person.id
            end
        redirect_to root_url
    end
    
    def destroy
        reset_session
        redirect_to root_url
    end
    
end
